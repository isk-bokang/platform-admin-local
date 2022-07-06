package world.iskra.platformadmin.repository;

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.ContractDeploy

interface ContractDeployRepository : CrudRepository<ContractDeploy, Long> {
}