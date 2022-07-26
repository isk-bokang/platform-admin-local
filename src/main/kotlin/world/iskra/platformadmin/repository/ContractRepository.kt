package world.iskra.platformadmin.repository

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.projections.ContractInfo

interface ContractRepository : CrudRepository<Contract, Long> {

    @Query("select c from Contract c")
    fun findAllWrappedProjection() : List<ContractInfo>


}