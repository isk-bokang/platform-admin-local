package world.iskra.platformadmin.repository

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.ContractDeploy

interface ContractDeployRepository : CrudRepository<ContractDeploy, Long> {
    fun findByService_Id(serviceId: Long): List<ContractDeploy>

    fun findByChain_ChainSeq(chainSeq: Long): List<ContractDeploy>


    fun findByService_IdAndContract_Id(serviceId: Long?, chainId: Long?): List<ContractDeploy>

}