package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.service.IChainService

@RestController
class ChainController(
    private val chainService : IChainService
) {
    @GetMapping("/chains")
    fun getChains(): ArrayList<Chain> {
        return chainService.getChains()
    }

    @GetMapping("/chains/{chainSeq}")
    fun getChain(@PathVariable chainSeq: String): Chain {
        return chainService.getChain(chainSeq.toLong())
    }

    @PostMapping("/chains")
    fun registerChain(@RequestBody chain : Chain): Chain {
        return chainService.registerChain(chain)
    }
}