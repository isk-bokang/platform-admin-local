package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
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
            nodeService.getNodes(chainSeq);
        }
        else{
            nodeService.getNodes();
        }
    }
}