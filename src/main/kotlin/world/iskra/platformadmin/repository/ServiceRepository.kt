package world.iskra.platformadmin.repository

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.GameApp

interface ServiceRepository : CrudRepository<GameApp, Long> {
}