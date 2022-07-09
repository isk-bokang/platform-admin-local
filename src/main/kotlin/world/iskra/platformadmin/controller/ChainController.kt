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

    @GetMapping("/chains/{chainId}")
    fun getChain(@PathVariable chainId: String): Chain {
        return chainService.getChain(chainId.toLong())
    }

    @PostMapping("/chains")
    fun registerChain(@RequestBody chain : Chain): Chain {
        return chainService.registerChain(chain)
    }
}