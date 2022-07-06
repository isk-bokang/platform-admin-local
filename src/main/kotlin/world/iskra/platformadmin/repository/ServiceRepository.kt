package world.iskra.platformadmin.repository;

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Service

interface ServiceRepository : CrudRepository<Service, Long> {
}