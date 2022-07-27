package world.iskra.platformadmin.dto

import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.GameApp
import java.io.Serializable



data class ParamDto(
    var internalType : String?,
    var type : String?,
    var name : String?,
): Serializable

data class ContractMethodParamResponseDto(
    var name : String? = null,
    var type : String? = null,
    var inputs : List<ParamDto>? = null
) :  Serializable

data class DeployedContractDto(
    var id: Long? = null,
    var gameApp: GameApp? = null,
    var contract: ContractDto? = null,
    var chain: Chain? = null,
    var address: String = "",
    var wallet: WalletDto? = null
) : Serializable {
    fun from(deployedContract: DeployedContract): DeployedContractDto {
        this.id = deployedContract.id
        this.gameApp = deployedContract.gameApp
        this.contract = deployedContract.contract?.toDto()
        this.chain = deployedContract.chain
        this.address = deployedContract.address
        this.wallet = deployedContract.wallet?.toDto()
        return this
    }
}
data class ContractDto(
    var id: Long? = null,
    var name: String = "",
    var contractType: Contract.ContractType? = null
) :
    Serializable

data class WalletDto(
    var id: Long? = null,
    var accountAddress: String? = null) : Serializable