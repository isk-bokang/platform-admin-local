package world.iskra.platformadmin.service

import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.GameApp
import world.iskra.platformadmin.entity.projections.DeployedContractInfo

interface IDeployedContractService {
    fun getDeployedContracts(): List<DeployedContractInfo>
    fun getDeployedContract(contractDeployId: Long): DeployedContractInfo?
    fun getDeployedContracts(
        appId: Long?,
        chainSeq: Long?,
        contractId: Long?,
        tokenType: Contract.TokenType?,
        chainType: Chain.ChainType?
    ): List<DeployedContractInfo>

    fun registerDeployedContract(
        contractId: Long?,
        appId: Long?,
        chainSeq: Long?,
        contractName : String?,
        deployerAddress: String?,
        contractAddress: String?
    ): DeployedContract

    fun deployContract(
        contractId: Long?,
        appId: Long?,
        chainSeq: Long?,
        contractName : String?,
        walletId: Long?,
        deployParams: List<Any> = emptyList()
    ): DeployedContract

    fun registerDeployedContract(
        contract: Contract?,
        app: GameApp?,
        chain: Chain?,
        contractName : String?,
        deployerAddress: String?,
        contractAddress: String?
        ): DeployedContract

}
