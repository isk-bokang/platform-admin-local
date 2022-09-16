package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.dto.*
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo
import world.iskra.platformadmin.service.WalletContractInfoService
import world.iskra.platformadmin.service.WalletService
import java.util.*

@RestController
class WalletController(
    private val walletService: WalletService,
    private val walletContractInfoService: WalletContractInfoService
) {
    @GetMapping("/wallets")
    fun getWallets(): List<WalletContractInfoDto> {
        val ret = walletService.getWallets().map { it ->
            WalletContractInfoDto(PlatformWalletDto.from(it), it.walletContractInfoList.map { jt ->
                PlatformContractInfoDto.from(jt)
            } as MutableList<PlatformContractInfoDto>)
        }
        return ret
    }

    @GetMapping("/wallets/{roleId}/address")
    fun getWalletByRole(
        @PathVariable roleId: Long,
        @RequestParam deployedContractId: Long?,
    ): List<String> {
        return walletService.getWalletAddress(roleId, deployedContractId)
    }

    @PostMapping("/wallets")
    fun registerWallet(@RequestBody wallet: Wallet): Wallet {
        return walletService.registerWallet(wallet)
    }

    @PatchMapping("/wallets/{:walletId}")
    fun updateWallet(@PathVariable walletId: Long, @RequestBody wallet: Wallet) {
        walletService.updateWallet(walletId, wallet)
    }

    @DeleteMapping("/wallets/{:walletId}")
    fun deleteWallet(@PathVariable walletId: String) {
        walletService.deleteWallet(walletId = walletId.toLong())
    }

    @PostMapping("/wallets/grant")
    fun grantWalletRole(@RequestBody grantRoleGrantRequestDto: WalletRoleGrantRequestDto) {

            walletContractInfoService.grantRole(
                grantRoleGrantRequestDto.walletId,
                grantRoleGrantRequestDto.deployedContractId,
                grantRoleGrantRequestDto.roleId
            )
    }
}

