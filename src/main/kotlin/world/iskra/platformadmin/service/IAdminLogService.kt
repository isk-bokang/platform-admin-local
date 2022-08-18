package world.iskra.platformadmin.service

import world.iskra.platformadmin.entity.AdminLog
import java.util.*

interface IAdminLogService {
    fun getLogs(): List<AdminLog>
    fun getLogs(platformType: AdminLog.PlatformType): List<AdminLog>
    fun getLogs(startDate: Date, endDate: Date): List<AdminLog>
    fun getLogs(category: String): List<AdminLog>
    fun getPlatformTypes(): List<String>

    fun registerLog(
        responsibility: String?,
        platformType: AdminLog.PlatformType,
        category: String,
        originValue: String?,
        updateValue: String?,
        txHash: String?,
        status: String?
    ): AdminLog
}