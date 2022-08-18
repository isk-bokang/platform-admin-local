package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.entity.AdminLog

@SpringBootTest
class AdminLogServiceImplTest(
    @Autowired
    private val adminLogServiceImpl: AdminLogServiceImpl
) {
    @Test
    fun registerLogTest001() {
        val ret = adminLogServiceImpl.registerLog(
            platformType = AdminLog.PlatformType.MARKETPLACE,
            category = "MARKET PLACE",
            txHash = "",
            status = "",
            originValue = "",
            updateValue = "",
            responsibility = ""
        )
        println(ret)
    }
}