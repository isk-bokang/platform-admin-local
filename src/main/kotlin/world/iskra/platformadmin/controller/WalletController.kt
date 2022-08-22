package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.dto.*
import world.iskra.platformadmin.service.WalletService

@RestController
class WalletController(
    private val walletService: WalletService
) {
    @GetMapping("/walletContractInfos")
    fun getWalletContractInfos(): List<WalletContractInfoDto> {
        val ret = walletService.getWallets().map { it ->
            WalletContractInfoDto( PlatformWalletDto.from(it), it.walletContractInfoList.map { jt->
                PlatformContractInfoDto.from(jt)
            } as MutableList<PlatformContractInfoDto>)
        }
        return ret
    }



}

