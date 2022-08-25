package world.iskra.platformadmin.dto

import java.io.Serializable


data class ContractDeployRequestDto(
    val appId: Long,
    val contractId: Long,
    val chainSeq: Long,
    val contractName: String,
    var contractAddress : String? = null,
    var deployerAddress : String? = null,
    var walletId : Long? = null,
    val deployParams : List<Any> = emptyList()
) : Serializable

data class NodeRequestDto(
    val chainSeq: Long,
    val nodeType: String,
    val ipAddress: String,
) : Serializable

data class AdminLogRequestDto(
    val responsibility: String? = null,
    val platform: String,
    val category: String,
    val originValue: String? = null,
    val updateValue: String? = null,
    val txHash : String? = null,
    val status : String? = null,
) : Serializable

data class WalletRoleGrantRequestDto(
    val walletId : Long,
    val deployedContractId : Long,
    val role : String
)
