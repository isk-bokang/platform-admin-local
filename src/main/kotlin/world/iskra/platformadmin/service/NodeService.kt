package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Node
import world.iskra.platformadmin.repository.NodeRepository
import java.util.*
import kotlin.collections.ArrayList

@Service
@RequiredArgsConstructor
class NodeServiceImpl(
    private val nodeRepository: NodeRepository
) : INodeService {
    override fun getNodes(): ArrayList<Node> {
        return nodeRepository.findAll() as ArrayList<Node>
    }
    override fun getNode(nodeId : Long): Node {
        return nodeRepository.findById(nodeId).orElse(Node());
    }

    override fun registerNode(node : Node): Node {
        return nodeRepository.save(node)
    }
    override fun getNodes(chainId : String): ArrayList<Node> {
        return nodeRepository.findByChain_ChainId(chainId) as ArrayList<Node>
    }

    override fun getNodes(chainSeq : Long): ArrayList<Node> {
        return nodeRepository.findByChain_ChainSeq(chainSeq) as ArrayList<Node>
    }
}
