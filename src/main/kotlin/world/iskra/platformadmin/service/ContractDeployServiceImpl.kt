package world.iskra.platformadmin.service

import com.klaytn.caver.Caver
import com.klaytn.caver.wallet.keyring.SingleKeyring
import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.entity.ContractDeploy
import world.iskra.platformadmin.repository.ContractDeployRepository

@Service
@RequiredArgsConstructor
class ContractDeployServiceImpl(
    private val contractDeployRepository: ContractDeployRepository,
    private val contractService: IContractService,
    private val chainService : IChainService,

    private val walletService: WalletService,
    private val gameAppService: GameAppService,
) : IContractDeployService {

    override fun registerDeployContract(contractDeployRequestDto : ContractDeployRequestDto): ContractDeploy {
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
        val contractDeploy = ContractDeploy(address = contractAddress, contract = contract, gameApp = service, chain = chain)

        return contractDeployRepository.save(contractDeploy)

    }

    override fun getDeployContracts(): ArrayList<ContractDeploy> {
        return contractDeployRepository.findAll() as ArrayList<ContractDeploy>
    }

    override fun getDeployContractsByService(serviceId : Long): ArrayList<ContractDeploy> {
        return contractDeployRepository.findByGameApp_Id(serviceId) as ArrayList<ContractDeploy>
    }

    override fun getDeployContractsByChin(chainSeq : Long): ArrayList<ContractDeploy> {
        return contractDeployRepository.findByChain_Seq(chainSeq) as ArrayList<ContractDeploy>
    }

    override fun getDeployContract(contractDeployId : Long): ContractDeploy {
        return contractDeployRepository.findById(contractDeployId).orElse(ContractDeploy())
    }

    override fun getDeployContracts(serviceId : Long, chainSeq : Long): ArrayList<ContractDeploy> {
        return contractDeployRepository.findByGameApp_IdAndChain_Seq(serviceId, chainSeq) as ArrayList<ContractDeploy>
    }


}
