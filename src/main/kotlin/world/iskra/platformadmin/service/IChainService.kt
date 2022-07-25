package world.iskra.platformadmin.service

import world.iskra.platformadmin.entity.Chain

interface IChainService {
    fun getChains(): ArrayList<Chain>
    fun getChain(chainSeq: Long): Chain
    fun registerChain(chain: Chain): Chain
    fun searchChain(chainSeq : Long?, chainId : Long?, chainName : String?, chainType: Chain.ChainType?, rpcUrl : String?): List<Chain>
}