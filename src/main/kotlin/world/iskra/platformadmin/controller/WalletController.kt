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

    @GetMapping("/wallets/{role}/address")
    fun getWalletByRole(
        @PathVariable role: String,
        @RequestParam deployedContractId: Long?,
    ): List<String> {
        val curRole : WalletContractInfo.Role= WalletContractInfo.Role.toEnum(role.uppercase(Locale.getDefault()))

        return walletService.getWalletAddress(curRole, deployedContractId)
    }

    @PostMapping("/wallets")
    fun registerWallet(@RequestBody wallet: Wallet) {
        return registerWallet(wallet)
    }

    @PatchMapping("/wallets/{:walletId}")
    fun updateWallet(@PathVariable walletId: Long, @RequestBody wallet: Wallet) {
        walletService.updateWallet(walletId, wallet)
    }

    @DeleteMapping("/wallets/{:walletId}")
    fun deleteWallet(@PathVariable walletId: String) {
        walletService.deleteWallet(walletId = walletId.toLong())
    }

    @GetMapping("/wallets/types")
    fun getWalletTypes(): List<String> {
        return walletContractInfoService.getWalletRoles()
    }

    @PostMapping("/wallets/grant")
    fun grantWalletRole(@RequestBody grantRoleGrantRequestDto: WalletRoleGrantRequestDto) {
        val curWalletRole: WalletContractInfo.Role = WalletContractInfo.Role.toEnum(grantRoleGrantRequestDto.role)
            walletContractInfoService.grantRole(
                grantRoleGrantRequestDto.walletId,
                grantRoleGrantRequestDto.deployedContractId,
                curWalletRole
            )
    }
}

