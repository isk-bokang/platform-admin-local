package world.iskra.platformadmin.repository;

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Chain
import java.util.*
import java.util.Collection

interface ChainRepository : CrudRepository<Chain, Long> {

    fun findBySeqOrChainIdOrNameOrChainTypeOrRpcUrl(
        seq: Long?,
        chainId: Long?,
        name: String?,
        chainType: Chain.ChainType?,
        rpcUrl: String?
    ): List<Chain>


    @Query(
        value = "select c from Chain c " +
        "where c.seq = ?1 or concat('' ,c.chainId, '') like concat('%',?2,'%') or lower(c.name) like concat('%', lower(?3), '%') or c.chainType = ?4 or lower(c.rpcUrl) like concat('%', lower(?5), '%')" )
    fun searchChains(
        seq: Long?,
        chainId: Long?,
        name: String?,
        chainType: Chain.ChainType?,
        rpcUrl: String?
    ): List<Chain>
}
