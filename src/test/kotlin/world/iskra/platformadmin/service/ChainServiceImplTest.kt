package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test

import org.junit.jupiter.api.Assertions.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.entity.Chain

@SpringBootTest
class ChainServiceImplTest(
    @Autowired
    private val chainService: IChainService
) {

    @Test
    fun getChains001() {
        val chains = chainService.getChains()
        chains.map { assertNotNull(it); assertNotEquals(it, Chain()) }
    }

    @Test
    fun getChain001() {
        val chain = chainService.getChain(1)
        assertNotNull(chain)
        assertNotEquals(chain, Chain())
    }

    @Test
    fun getChain002() {
        val chain = chainService.getChain(100)
        assertNotNull(chain)
        assertEquals(chain, Chain())
    }

    @Test
    fun registerChain001() {
        val chain = Chain(chainId = "0x00", name = "Test Chain", rpcUrl = "https://rpc")
        val ret = chainService.registerChain(chain)
        assertNotNull(ret.seq)
    }

}