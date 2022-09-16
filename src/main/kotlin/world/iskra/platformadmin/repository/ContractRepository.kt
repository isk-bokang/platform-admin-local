package world.iskra.platformadmin.repository

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.projections.ContractInfo

interface ContractRepository : CrudRepository<Contract, Long> {

    @Query("select c from Contract c")
    fun findAllWrappedProjection() : List<ContractInfo>


    @Query(
        """select c from Contract c
where upper(c.contractType.name) like upper(concat('%', ?1, '%')) and upper(c.contractType.platformName) like upper(concat('%', ?2, '%')) and upper(c.name) like upper(concat('%', ?3, '%'))"""
    )
    fun getContracts(
        name: String?,
        platformName: String?,
        name1: String?
    ): List<ContractInfo>

}