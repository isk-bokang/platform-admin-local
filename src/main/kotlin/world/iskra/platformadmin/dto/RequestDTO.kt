package world.iskra.platformadmin.dto

import java.io.Serializable


data class ContractDeployRequestDto(
    val appId: Long,
    val contractId: Long,
    val chainSeq: Long,
    val walletId: Long,
    var contractAddress : String? = null,
    val deployParams : List<Any> = emptyList()
) : Serializable

data class NodeRequestDto(
    val chainSeq: Long,
    val nodeType: String,
    val ipAddress: String,
) : Serializable
