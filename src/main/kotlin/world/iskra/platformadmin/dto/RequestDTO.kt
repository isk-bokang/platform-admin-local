package world.iskra.platformadmin.dto

import java.io.Serializable

class RequestDTO {
}

data class ContractDeployRequestDto(
    val serviceId: Long,
    val contractId: Long,
    val chainSeq: Long,
    val deployParams : List<Any> = emptyList()
) : Serializable

data class NodeRequestDto(
    val chainSeq: Long,
    val nodeType: String,
    val ipAddress: String,
) : Serializable
