package world.iskra.platformadmin.repository;

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Chain

interface ChainRepository : CrudRepository<Chain, Long> {

    fun findBySeqOrChainIdOrNameOrChainTypeOrRpcUrl(
        seq: Long?,
        chainId: Long?,
        name: String?,
        chainType: Chain.ChainType?,
        rpcUrl: String?
    ): List<Chain>

}