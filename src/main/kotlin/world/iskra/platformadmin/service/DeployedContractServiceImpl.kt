package world.iskra.platformadmin.service

import com.klaytn.caver.Caver
import com.klaytn.caver.wallet.keyring.SingleKeyring
import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.DeployedContractInfo
import world.iskra.platformadmin.repository.DeployedContractRepository

@Service
@RequiredArgsConstructor
class DeployedContractServiceImpl(
    private val deployedContractRepository: DeployedContractRepository,
    private val contractService: IContractService,
    private val chainService : IChainService,

    private val walletService: WalletService,
    private val gameAppService: GameAppService,
) : IDeployedContractService {

    override fun registerDeployContract(contractDeployRequestDto : ContractDeployRequestDto): DeployedContract {
        // Fixed Wallet
        val wallet = walletService.getWallet(1)

        val service = gameAppService.getApp(contractDeployRequestDto.serviceId)
        val contract = contractService.getContract(contractDeployRequestDto.contractId)
        val chain = chainService.getChain(contractDeployRequestDto.chainSeq)

        if(service.id == null || contract.id == null || chain.seq == null) throw Exception()

        val caver = Caver(chain.rpcUrl)
        val deployer : SingleKeyring = caver.wallet.keyring.createFromPrivateKey( wallet.privateKey )

        caver.wallet.add(deployer)

        val contractDeployer = ContractDeployer(caver, contract.abi.toString())
        contractDeployer.deploy(deployer.address, contract.bytecode!!, contractDeployRequestDto.deployParams)

        val contractAddress = contractDeployer.getDeployedAddress() ?: "0x"
        val deployedContract = DeployedContract(address = contractAddress, contract = contract, gameApp = service, chain = chain)

        return deployedContractRepository.save(deployedContract)

    }

    override fun getDeployedContracts(): ArrayList<DeployedContract> {
        return deployedContractRepository.findAll() as ArrayList<DeployedContract>
    }

    override fun getDeployedContractsByService(serviceId : Long): ArrayList<DeployedContract> {
        return deployedContractRepository.findByGameApp_Id(serviceId) as ArrayList<DeployedContract>
    }

    override fun getDeployedContractsByChain(chainSeq : Long): ArrayList<DeployedContract> {
        return deployedContractRepository.findByChain_Seq(chainSeq) as ArrayList<DeployedContract>
    }

    override fun getDeployedContract(contractDeployId : Long): DeployedContractInfo? {
        return deployedContractRepository.findByIdWrappedProjection(contractDeployId).orElse(null)
    }

    override fun getDeployedContracts(appId : Long?, chainSeq : Long?, contractId : Long?): List<DeployedContractInfo> {
        return deployedContractRepository.findAllWrappedProjection().filter{
            if(contractId == null) true
            else contractId == it.contract?.id
        }.filter{
            if(chainSeq == null) true
            else chainSeq == it.chain?.seq
        }.filter{
            if(appId == null) true
            else appId == it.gameApp?.id
        }
    }


}
