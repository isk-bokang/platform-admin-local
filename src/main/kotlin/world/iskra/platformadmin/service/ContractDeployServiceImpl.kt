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
    private val serviceService: ServiceService,
) {

    fun registerDeployContract(contractDeployRequestDto : ContractDeployRequestDto): ContractDeploy {
        // Fixed Wallet
        val wallet = walletService.getWallet(1)

        val service = serviceService.getService(contractDeployRequestDto.serviceId)
        val contract = contractService.getContract(contractDeployRequestDto.contractId)
        val chain = chainService.getChain(contractDeployRequestDto.chainSeq)

        if(service.id == null || contract.id == null || chain.chainSeq == null) throw Exception()

        val caver : Caver = Caver(chain.rpcUrl)
        val deployer : SingleKeyring = caver.wallet.keyring.createFromPrivateKey( wallet.privateKey )

        caver.wallet.add(deployer)

        println(deployer.address)
        val contractDeployer : ContractDeployer = ContractDeployer(caver, contract.abi.toString())
        contractDeployer.deploy(deployer.address, contract.bytecode, contractDeployRequestDto.deployParams)

        val contractAddress = contractDeployer.getDeployedAddress() ?: "0x"
        val contractDeploy = ContractDeploy(address = contractAddress, contract = contract, service = service, chain = chain)

        return contractDeployRepository.save(contractDeploy)

    }

    fun getDeployContracts(){

    }

    fun getDeployContract(){

    }
}
