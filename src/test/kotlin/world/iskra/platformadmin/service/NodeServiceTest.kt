package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test

import org.junit.jupiter.api.Assertions.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.entity.Node

@SpringBootTest
class NodeServiceTest(
    @Autowired
    private val nodeService : INodeService,
    @Autowired
    private val chainService : IChainService
) {

    @Test
    fun getNodes() {
        val ret = nodeService.getNodes()
        ret.map { assertNotNull(it); assertNotEquals(it, Node()) }
    }

    @Test
    fun getNode() {
        val node = nodeService.getNode(1)
        assertNotNull(node)
        assertNotEquals(node, Node())
    }

    @Test
    fun registerNode() {
        val chain = chainService.getChain(1)
        val node = Node(ipAddress = "test", nodeType = "test", chain = chain)
        nodeService.registerNode(node)
    }

    @Test
    fun testGetNodes() {
        val chain = chainService.getChain(1)
        val ret = nodeService.getNodes(chain.chainId)
        ret.map { assertNotNull(it); assertNotEquals(it, Node()) }
    }

    @Test
    fun testGetNodes1() {
        val chain = chainService.getChain(1)
        val ret = chain.chainSeq?.let { nodeService.getNodes(it) }
        assertNotNull(ret)
        ret?.map { assertNotNull(it); assertNotEquals(it, Node()) }
    }
}