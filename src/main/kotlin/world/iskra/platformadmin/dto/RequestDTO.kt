package world.iskra.platformadmin.dto

import java.io.Serializable

class RequestDTO {
}

data class ContractDeployRequestDto(
    val serviceId: Long,
    val contractId: Long,
    val chainSeq: Long,
    val minterAddress: String,
    val deployParams : List<Any> = emptyList()
) : Serializable