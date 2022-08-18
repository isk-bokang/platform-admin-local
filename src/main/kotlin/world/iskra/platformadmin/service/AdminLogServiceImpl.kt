package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.AdminLog
import world.iskra.platformadmin.repository.AdminLogRepository
import java.util.*
import kotlin.collections.ArrayList


@Service
@RequiredArgsConstructor
class AdminLogServiceImpl(
    private val adminLogRepository : AdminLogRepository
) : IAdminLogService {
    override fun getLogs(): List<AdminLog> {
        return adminLogRepository.findAll() as ArrayList<AdminLog>
    }

    override fun getLogs(platformType: AdminLog.PlatformType): List<AdminLog> {
        return adminLogRepository.findByPlatform(platformType)
    }

    override fun getLogs(startDate : Date, endDate : Date): List<AdminLog> {
        return adminLogRepository.findByCreateAtBetween(startDate, endDate)
    }

    override fun getLogs(category : String): List<AdminLog> {
        return adminLogRepository.findByCategory(category)
    }

    override fun registerLog(
        responsibility: String?,
        platformType: AdminLog.PlatformType,
        category: String,
        originValue: String?,
        updateValue: String?,
        txHash : String?,
        status : String?
    ): AdminLog {
        return adminLogRepository.save(AdminLog(
            responsibility = responsibility,
            platform = platformType,
            category = category,
            originValue = originValue,
            updateValue = updateValue,
            txHash = txHash,
            status = status
        ))
    }

    override fun getPlatformTypes(): List<String> {
        val ret: MutableList<String> = mutableListOf()

        enumValues<AdminLog.PlatformType>().joinToString { ret.add(it.name); it.name }
        return ret
    }
}