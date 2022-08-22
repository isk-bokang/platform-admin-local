package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class WalletServiceTest(
    @Autowired
    private val walletService :WalletService
) {
    @Test
    fun getWalletInfos() {
        val ret = walletService.getWallets()
        println(ret)
    }
}
