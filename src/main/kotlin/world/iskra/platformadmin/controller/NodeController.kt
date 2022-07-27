package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.dto.NodeRequestDto
import world.iskra.platformadmin.entity.Node
import world.iskra.platformadmin.service.INodeService

@RestController
class NodeController(
    private val nodeService : INodeService
) {
    @GetMapping("nodes")
    fun getNodeList(
        @RequestParam(name = "chainSeq") chainSeq : Long?
    ): ArrayList<Node> {
        return if(chainSeq != null){
            nodeService.getNodes(chainSeq)
        }
        else{
            nodeService.getNodes()
        }
    }
    @GetMapping("nodes/{nodeId}")
    fun getNode(@PathVariable nodeId: String): Node {
        return nodeService.getNode(nodeId.toLong())
    }

    @PostMapping("nodes")
    fun registerNode(@RequestBody node : NodeRequestDto): Node {
        return nodeService.registerNode(node)
    }

}


