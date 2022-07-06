package world.iskra.platformadmin.service

import world.iskra.platformadmin.entity.Chain

interface IChainService {
    fun getChains(): ArrayList<Chain>
    fun getChain(chainId: Long): Chain
    fun registerChain(chain: Chain): Chain
}