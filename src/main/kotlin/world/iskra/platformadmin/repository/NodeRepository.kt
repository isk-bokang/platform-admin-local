package world.iskra.platformadmin.repository;

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Node

interface NodeRepository : CrudRepository<Node, Long> {

    fun findByChain_ChainId(chainId: String): List<Node>


    fun findByChain_ChainSeq(chainSeq: Long): List<Node>

}