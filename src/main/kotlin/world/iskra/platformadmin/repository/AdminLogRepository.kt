package world.iskra.platformadmin.repository

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.AdminLog
import java.util.*

interface AdminLogRepository : CrudRepository<AdminLog, Long> {

    fun findByCreateAtBetween(
        createAtStart: Date,
        createAtEnd: Date
    ): List<AdminLog>

    fun findByPlatform(platform: AdminLog.PlatformType): List<AdminLog>

    fun findByCategory(category: String): List<AdminLog>

}