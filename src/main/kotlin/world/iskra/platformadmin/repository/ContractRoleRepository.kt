package world.iskra.platformadmin.repository;

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.ContractRole
import world.iskra.platformadmin.entity.projections.ContractRoleInfo

interface ContractRoleRepository : CrudRepository<ContractRole, Long> {
    fun findAllByContract_Id(contractId : Long) : List<ContractRoleInfo>

    @Query("select r.id as id, r.contract.id as contractId, r.name as name, r.onChainName as onChainName from DeployedContract d, ContractRole r " +
            "where d.id = ?1 and d.contract.id = r.contract.id")
    fun getContractRoleByDeployedContractId(deployedContractId : Long) : List<ContractRoleInfo>

}