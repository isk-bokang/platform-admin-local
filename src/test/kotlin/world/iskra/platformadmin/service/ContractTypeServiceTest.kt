package world.iskra.platformadmin.service

import org.junit.jupiter.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class ContractTypeServiceTest(
    @Autowired
    private val contractTypeService: ContractTypeService
){
    @Test
    fun getContractTypesTest(){
        println(contractTypeService.getContractTypes(null, null))
    }

    @Test
    fun getContractTypeTest(){
        println(contractTypeService.getContractType(1))
    }
}