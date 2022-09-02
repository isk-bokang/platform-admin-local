package world.iskra.platformadmin.entity.projections

import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.ContractType
import world.iskra.platformadmin.entity.WalletContractInfo

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
    val contractType: ContractType?
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

interface WalletContractInfoProj{
    val walletId : Long?
    val accountAddress: String?
    val name : String?
    val walletRole : WalletContractInfo.Role?
    val contractAddress : String?

}


