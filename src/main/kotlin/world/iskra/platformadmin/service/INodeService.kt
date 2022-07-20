package world.iskra.platformadmin.service

import world.iskra.platformadmin.dto.NodeRequestDto
import world.iskra.platformadmin.entity.Node

interface INodeService {
    fun getNodes(): ArrayList<Node>
    fun getNode(nodeId: Long): Node
    fun registerNode(node: NodeRequestDto): Node
    fun getNodes(chainId: String): ArrayList<Node>
    fun getNodes(chainSeq: Long): ArrayList<Node>
}