package world.iskra.platformadmin.entity.projections

import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract

interface DeployedContractInfo {
    val id: Long?
    val address: String?
    val gameApp: GameAppInfo?
    val contract: ContractInfo?
    val chain: ChainInfo?

}

interface GameAppInfo {
    val id: Long?
    val name: String?
    val category: String?
}

interface ContractInfo {
    val id: Long?
    val name: String?
    val contractType: Contract.ContractType?
}

interface ChainInfo {
    val seq: Long?
    val chainId: Long?
    val name: String?
    val rpcUrl: String?
    val chainType: Chain.ChainType?
}

interface WalletInfo {
    val id: Long?
    val accountAddress: String?
}