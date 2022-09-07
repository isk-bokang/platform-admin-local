package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo

@SpringBootTest
class WalletContractInfoServiceTest(
    @Autowired
    private val walletContractInfoService: WalletContractInfoService,

    @Autowired
    private val deployedContractService: DeployedContractService
) {

}