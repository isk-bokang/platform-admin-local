package world.iskra.platformadmin.repository;

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.ContractType

interface ContractTypeRepository : CrudRepository<ContractType, Long> {


    @Query("select c from ContractType c where upper(c.name) like upper(concat('%', ?1, '%')) " +
            "and upper(c.platformName) like upper(concat('%', ?2, '%')) ")
    fun getContractTypes(name: String = "", platformName: String = ""): List<ContractType>


    fun findByNameContainsIgnoreCaseAndPlatformNameContainsIgnoreCase(
        name: String?,
        platformName: String?
    ): List<ContractType>

}