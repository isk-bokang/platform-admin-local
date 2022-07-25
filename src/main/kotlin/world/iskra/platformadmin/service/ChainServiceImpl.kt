package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.repository.ChainRepository

@Service
@RequiredArgsConstructor
class ChainServiceImpl(
    val chainRepository: ChainRepository
) : IChainService {
    override fun getChains(): ArrayList<Chain> {
        return chainRepository.findAll() as ArrayList<Chain>
    }
    override fun getChain(chainSeq : Long): Chain {
        return chainRepository.findById(chainSeq).orElse( Chain())
    }
    override fun registerChain(chain : Chain): Chain {
        return chainRepository.save(chain)
    }

    override fun searchChain(
        chainSeq: Long?,
        chainId: Long?,
        chainName: String?,
        chainType: Chain.ChainType?,
        rpcUrl: String?
    ): List<Chain> {
        return chainRepository.findBySeqOrChainIdOrNameOrChainTypeOrRpcUrl(chainSeq,chainId,chainName,chainType,rpcUrl)
    }
}