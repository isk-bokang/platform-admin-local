package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.dto.*
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.service.WalletContractInfoService
import world.iskra.platformadmin.service.WalletService

@RestController
class WalletController(
    private val walletService: WalletService,
    private val walletContractInfoService: WalletContractInfoService
) {
    @GetMapping("/wallets")
    fun getWalletContractInfos(): List<WalletContractInfoDto> {
        val ret = walletService.getWallets().map { it ->
            WalletContractInfoDto( PlatformWalletDto.from(it), it.walletContractInfoList.map { jt->
                PlatformContractInfoDto.from(jt)
            } as MutableList<PlatformContractInfoDto>)
        }
        return ret
    }
    @PostMapping("/wallets")
    fun registerWallet( @RequestBody wallet : Wallet){
        return registerWallet(wallet)
    }

    @PatchMapping("/wallets/{:walletId}")
    fun updateWallet(@PathVariable walletId: String, @RequestBody wallet: Wallet){
        walletService.updateWallet(walletId.toLong(), wallet)
    }

    @DeleteMapping("/wallets/{:walletId}")
    fun deleteWallet(@PathVariable walletId : String){
        walletService.deleteWallet(walletId = walletId.toLong())
    }

    @GetMapping("/wallets/types")
    fun getWalletTypes(): List<String> {
        return walletContractInfoService.getWalletRoles()
    }

    @PostMapping("/wallets/grant")
    fun grantWalletRole(@RequestBody grantRoleGrantRequestDto: WalletRoleGrantRequestDto){

    }
}

