package world.iskra.platformadmin.service

import com.klaytn.caver.Caver
import com.klaytn.caver.wallet.keyring.SingleKeyring
import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.GameApp
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.projections.DeployedContractInfo
import world.iskra.platformadmin.repository.DeployedContractRepository

@Service
@RequiredArgsConstructor
class DeployedContractServiceImpl(
    private val deployedContractRepository: DeployedContractRepository,
    private val contractService: IContractService,
    private val chainService: IChainService,

    private val walletService: WalletService,
    private val gameAppService: GameAppService,
) : IDeployedContractService {

    override fun registerDeployedContract(
        contractId: Long?,
        appId: Long?,
        chainSeq: Long?,
        walletId: Long?,
        contractAddress: String?
    ): DeployedContract {
        val wallet = walletId?.let { walletService.getWallet(it) }
        val app = appId?.let { gameAppService.getApp(it) }
        val contract = contractId?.let { contractService.getContract(it) }
        val chain = chainSeq?.let { chainService.getChain(it) }

        return registerDeployedContract(contract, app, chain, wallet, contractAddress)
    }

    override fun registerDeployedContract(
        contract: Contract?,
        app: GameApp?,
        chain: Chain?,
        wallet: Wallet?,
        contractAddress: String?
    ): DeployedContract {

        if (app?.id == null
            || contract?.id == null
            || chain?.seq == null
            || wallet?.id == null
            || contractAddress == null
        ) throw Exception()

        val deployedContract =
            DeployedContract(address = contractAddress, contract = contract, gameApp = app, chain = chain)

        return deployedContractRepository.save(deployedContract)
    }

    override fun getDeployedContracts(): List<DeployedContractInfo> {
        return deployedContractRepository.findAllWrappedProjection()
    }

    override fun getDeployedContract(contractDeployId: Long): DeployedContractInfo? {
        return deployedContractRepository.findByIdWrappedProjection(contractDeployId).orElse(null)
    }

    override fun deployContract(
        contractId: Long?,
        appId: Long?,
        chainSeq: Long?,
        walletId: Long?,
        deployParams: List<Any>
    ): DeployedContract {
        val wallet = walletId?.let { walletService.getWallet(it) }
        val app = appId?.let { gameAppService.getApp(it) }
        val contract = contractId?.let { contractService.getContract(it) }
        val chain = chainSeq?.let { chainService.getChain(it) }

        if (app?.id == null
            || contract?.id == null
            || chain?.seq == null
            || wallet?.id == null
        ) throw Exception()

        val caver = Caver(chain.rpcUrl)
        val deployer: SingleKeyring = caver.wallet.keyring.createFromPrivateKey(wallet.privateKey)

        caver.wallet.add(deployer)

        val contractDeployer = ContractDeployer(caver, contract.abi.toString())
        contractDeployer.deploy(deployer.address, contract.bytecode!!, deployParams)

        val contractAddress = contractDeployer.getDeployedAddress() ?: "0x"

        return registerDeployedContract(contract, app, chain, wallet, contractAddress)
    }

    override fun getDeployedContracts(
        appId: Long?,
        chainSeq: Long?,
        contractId: Long?,
        contractType: Contract.ContractType?,
        chainType: Chain.ChainType?
    ): List<DeployedContractInfo> {
        return getDeployedContracts().asSequence().filter {
            if (contractId == null) true
            else contractId == it.contract?.id
        }.filter {
            if (chainSeq == null) true
            else chainSeq == it.chain?.seq
        }.filter {
            if (appId == null) true
            else appId == it.gameApp?.id
        }.filter {
            if (contractType == null) true
            else contractType == it.contract?.contractType
        }.filter {
            if (chainType == null) true
            else chainType == it.chain?.chainType
        }.toList()
    }
}
