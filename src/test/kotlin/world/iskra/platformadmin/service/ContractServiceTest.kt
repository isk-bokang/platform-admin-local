package world.iskra.platformadmin.service

import org.junit.jupiter.api.Assertions
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.entity.Contract

@SpringBootTest
class ContractServiceTest(
    @Autowired
    private val contractService: IContractService
) {
    @Test
    fun registerContract001(){
        val contract = Contract(name = "registerContractTest001", abi = "{abi:abi}", bytecode = "0x001", contractType = Contract.ContractType.ERC20)
        val ret = contractService.registerContract(contract)
        Assertions.assertNotNull(ret.id)
    }

    @Test
    fun getContracts001(){
        val contracts = contractService.getContracts()
        contracts.map { Assertions.assertNotNull(it); Assertions.assertNotEquals(it, Contract()); }
    }
    @Test
    fun getContract001(){
        val contract = contractService.getContract(1)
        Assertions.assertNotNull(contract)
        Assertions.assertNotEquals(contract , Contract())
    }
    @Test
    fun getContract002(){
        val contract = contractService.getContract(100)
        Assertions.assertNotNull(contract)
        Assertions.assertEquals(contract , Contract())
    }

}