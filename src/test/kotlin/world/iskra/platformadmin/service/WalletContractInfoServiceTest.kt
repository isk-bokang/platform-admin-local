package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo

@SpringBootTest
class WalletContractInfoServiceTest(
    @Autowired
    private val walletContractInfoService: WalletContractInfoService,

    @Autowired
    private val deployedContractService: IDeployedContractService
) {
    @Test
    fun registerWalletContractInfoTest_001(){
        val ret = walletContractInfoService.registerWalletContractInfo(1,1, WalletContractInfo.Role.DEPLOYER)

        println(ret)
    }

    @Test
    fun registerWalletContractInfoTest_002(){
        val deployedContractProj = deployedContractService.getDeployedContract(1)

        val ret = walletContractInfoService.registerWalletContractInfo( null,
        Wallet(accountAddress = "ADDRESS", name = "TESTADDRESS"), WalletContractInfo.Role.OWNER )
        println(ret)
    }
}