package world.iskra.platformadmin.dto

import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.GameApp
import java.io.Serializable

class ResponseDTO {
}


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
    val id: Long? = null,
    val gameApp: GameApp? = null,
    val contract: ContractDto? = null,
    val chain: Chain? = null,
    val address: String = "",
    val wallet: WalletDto? = null
) : Serializable {

}
data class ContractDto(
    val id: Long? = null,
    val name: String = "",
    val contractType: Contract.ContractType? = null
) :
    Serializable

data class WalletDto(
    val id: Long? = null,
    val accountAddress: String? = null) : Serializable