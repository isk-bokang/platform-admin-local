package world.iskra.platformadmin.dto

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