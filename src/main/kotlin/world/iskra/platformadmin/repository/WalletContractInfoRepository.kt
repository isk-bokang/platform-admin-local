package world.iskra.platformadmin.repository

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.ContractRole
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.WalletContractInfo

interface WalletContractInfoRepository : CrudRepository<WalletContractInfo, Long> {


    fun existsByWallet_Id(id: Long): Boolean


    @Query(
        """select w.id from WalletContractInfo w
            where w.contractRole.id = ?1 and w.deployedContract.id = ?2"""
    )
    fun findIdByDeployedContractIdAndRole(roleId: Long, id: Long): Long?


    @Query(
        """select w from WalletContractInfo w
where w.deployedContract.chain.seq = ?1 and w.deployedContract.contract.contractType = ?2 and w.contractRole = ?3"""
    )
    fun findByChainSeqAndContractTypeAndRole(
        seq: Long,
        contractType: String,
        role: ContractRole
    ): List<WalletContractInfo>

}