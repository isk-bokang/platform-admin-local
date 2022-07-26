package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.DeployedContractInfo
import world.iskra.platformadmin.service.IDeployedContractService

@RestController
class DeployedContractController(
    private val contractDeployService: IDeployedContractService
) {
    @GetMapping("deployed/contracts/{deployedContractId}")
    fun getDeployedContract(@PathVariable deployedContractId: String): DeployedContractInfo? {
        return contractDeployService.getDeployedContract(deployedContractId.toLong())
    }

    @GetMapping("deployed/contracts")
    fun getDeployedContracts(
        @RequestParam(name = "appId") appId: String?,
        @RequestParam(name = "chainSeq") chainSeq: String?,
        @RequestParam(name = "contractId") contractId: String?
    ): List<DeployedContractInfo> {
        return contractDeployService.getDeployedContracts(appId?.toLong(), chainSeq?.toLong(), contractId?.toLong())
    }

    @PostMapping("deployed/contracts")
    fun registerDeployContract(@RequestBody contractDeployRequestDto: ContractDeployRequestDto): DeployedContract {
        return contractDeployService.registerDeployContract(contractDeployRequestDto)
    }
}
