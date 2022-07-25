package world.iskra.platformadmin.repository

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.ContractDeploy

interface ContractDeployRepository : CrudRepository<ContractDeploy, Long> {
    fun findByGameApp_Id(serviceId: Long): List<ContractDeploy>

    fun findByChain_Seq(chainSeq: Long): List<ContractDeploy>


    fun findByGameApp_IdAndChain_Seq(serviceId: Long, chainSeq: Long): List<ContractDeploy>



}