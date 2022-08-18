package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.dto.AdminLogRequestDto
import world.iskra.platformadmin.entity.AdminLog
import world.iskra.platformadmin.service.IAdminLogService

@RestController
class AdminLogController(
    private val adminLogService: IAdminLogService
) {
    @GetMapping("/adminLogs")
    fun getLogs(
        @RequestParam category : String?,
        @RequestParam platformType: String?
    ): List<AdminLog> {
        val enumPlatformType = AdminLog.PlatformType.toEnum(platformType)

        return if(category == null && platformType == null){
            adminLogService.getLogs()
        } else if(category != null){
            adminLogService.getLogs(category)
        } else if(enumPlatformType != null && enumPlatformType != AdminLog.PlatformType.NONE ){
            adminLogService.getLogs(enumPlatformType)
        } else
            adminLogService.getLogs()
    }

    @PostMapping("/adminLogs")
    fun registerLog(@RequestBody adminLog : AdminLogRequestDto): AdminLog {
        return adminLogService.registerLog(
            responsibility = adminLog.responsibility,
            platformType = AdminLog.PlatformType.toEnum(adminLog.platform) ?: AdminLog.PlatformType.NONE,
            category = adminLog.category,
            originValue = adminLog.originValue,
            updateValue = adminLog.updateValue,
            status = adminLog.status,
            txHash = adminLog.txHash
        )
    }

    @GetMapping("/adminLogs/platformTypes")
    fun getPlatformTypes(): List<String> {
        return adminLogService.getPlatformTypes()
    }

}