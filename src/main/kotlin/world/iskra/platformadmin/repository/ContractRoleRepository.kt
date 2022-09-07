package world.iskra.platformadmin.repository;

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.ContractRole
import world.iskra.platformadmin.entity.projections.ContractRoleInfo

interface ContractRoleRepository : CrudRepository<ContractRole, Long> {
    fun findAllByContract_Id(contractId : Long) : List<ContractRoleInfo>

}