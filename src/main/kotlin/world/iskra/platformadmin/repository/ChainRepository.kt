package world.iskra.platformadmin.repository;

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Chain

interface ChainRepository : CrudRepository<Chain, Long> {
}