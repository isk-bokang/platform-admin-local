package world.iskra.platformadmin.repository

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.WalletContractInfo

interface WalletContractInfoRepository : CrudRepository<WalletContractInfo, Long> {


    fun existsByWallet_Id(id: Long): Boolean


    fun existsByWallet_IdAndRole(id: Long, role: WalletContractInfo.Role): Boolean


    fun deleteByDeployedContractAndRoleAllIgnoreCase(
        deployedContract: DeployedContract,
        role: WalletContractInfo.Role
    ): Long


    fun existsByDeployedContract_IdAndRoleAllIgnoreCase(deployedContractId: Long, role: WalletContractInfo.Role): Boolean


    @Query(
        """select w.id from WalletContractInfo w
            where w.role = ?1 and w.deployedContract.id = ?2"""
    )
    fun findIdByDeployedContractIdAndRole(role: WalletContractInfo.Role, id: Long): Long?

}