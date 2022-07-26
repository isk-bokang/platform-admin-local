package world.iskra.platformadmin.repository

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.DeployedContractInfo
import java.util.Optional

interface DeployedContractRepository : CrudRepository<DeployedContract, Long> {
    fun findByGameApp_Id(serviceId: Long): List<DeployedContract>

    fun findByChain_Seq(chainSeq: Long): List<DeployedContract>

    fun findByGameApp_IdAndChain_Seq(appId: Long, chainSeq: Long): List<DeployedContract>

    fun findByContract_Id(contractId: Long): List<DeployedContract>

    fun findByGameApp_IdAndChain_SeqAndContract_Id(appId: Long, chainSeq: Long, contractId: Long): List<DeployedContract>


    @Query("select d from DeployedContract d")
    fun findAllWrappedProjection(): List<DeployedContractInfo>

    @Query("select d from DeployedContract d where d.id = ?1")
    fun findByIdWrappedProjection(contractDeployId: Long): Optional<DeployedContractInfo>
}
