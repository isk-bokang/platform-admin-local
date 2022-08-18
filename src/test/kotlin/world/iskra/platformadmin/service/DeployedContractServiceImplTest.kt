package world.iskra.platformadmin.service

import org.junit.jupiter.api.Test

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class DeployedContractServiceImplTest(
    @Autowired
    private val contractDeployService : IDeployedContractService
) {

    @Test
    fun deployContract() {
        val contractId = 1L
        val appId = 1L
        val chainSeq = 2L
        val walletId = 1L
        val deployParams = listOf("0x17F802d426291cBBFedFD20Af44C0e794027976C", 10)

        contractDeployService.deployContract(contractId, appId, chainSeq, "Contract",walletId, deployParams)
    }

}