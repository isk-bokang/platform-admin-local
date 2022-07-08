package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test

import org.junit.jupiter.api.Assertions.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import world.iskra.platformadmin.dto.ContractDeployRequestDto

@SpringBootTest
class ContractDeployServiceImplTest(
    @Autowired
    private val contractDeployService : IContractDeployService
) {

    @Test
    fun registerDeployContract() {
        val contractDeployRequestDto : ContractDeployRequestDto = ContractDeployRequestDto(
            contractId = 1,
            serviceId = 1,
            chainSeq = 2,
        deployParams = listOf("0x17F802d426291cBBFedFD20Af44C0e794027976C", 10)
        )

        contractDeployService.registerDeployContract(contractDeployRequestDto)
    }
}