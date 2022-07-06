package world.iskra.platformadmin.service

import world.iskra.platformadmin.entity.Node

interface INodeService {
    fun getNodes(): ArrayList<Node>
    fun getNode(nodeId: Long): Node
    fun registerNode(node: Node): Node
    fun getNodes(chainId: String): ArrayList<Node>
    fun getNodes(chainSeq: Long): ArrayList<Node>
}