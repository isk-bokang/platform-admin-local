package world.iskra.platformadmin.dto

import world.iskra.platformadmin.entity.*
import world.iskra.platformadmin.entity.WalletContractInfo
import java.io.Serializable


data class ParamDto(
    var internalType: String?,
    var type: String?,
    var name: String?,
) : Serializable

data class ContractMethodParamResponseDto(
    var name: String? = null,
    var type: String? = null,
    var inputs: List<ParamDto>? = null
) : Serializable

data class DeployedContractDto(
    var id: Long? = null,

    var gameApp: GameApp? = null,
    var contract: ContractDto? = null,
    var chain: Chain? = null,
    var address: String = "",
    var deployerAddress: String = ""
) : Serializable {
    companion object {
        fun from(deployedContract: DeployedContract): DeployedContractDto {
            return DeployedContractDto(
                deployedContract.id,
                deployedContract.gameApp,
                deployedContract.contract?.toDto(),
                deployedContract.chain,
                deployedContract.address,
                deployedContract.deployerAddress
            )
        }
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
    var accountAddress: String? = null,
    val name: String? = null,
) : Serializable



data class PlatformWalletDto(
    val id: Long? = null,
    val accountAddress: String? = null,
    val name : String? = null,
) : Serializable{
    companion object{
        fun from(wallet : Wallet): PlatformWalletDto {
            return PlatformWalletDto(
                wallet.id,
                wallet.accountAddress,
                wallet.name
            )
        }
    }
}

data class PlatformContractInfoDto(
    val role : WalletContractInfo.Role? = null,
    val deployedContractDto: DeployedContractDto? = null
): Serializable{
    companion object{
        fun from(walletContractInfo: WalletContractInfo): PlatformContractInfoDto {
            return PlatformContractInfoDto(
                walletContractInfo.role,
                walletContractInfo.deployedContract?.let { DeployedContractDto.from(it) }
            )
        }
    }
}

data class WalletContractInfoDto(
    val platformWalletDto: PlatformWalletDto,
    val platformContractInfoDtos: MutableList<PlatformContractInfoDto> = mutableListOf()
): Serializable

