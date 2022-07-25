package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.entity.ContractDeploy
import world.iskra.platformadmin.service.IContractDeployService

@RestController
class ContractDeployController(
    private val contractDeployService : IContractDeployService
) {
    @GetMapping("deployed/contracts/{deployedContractId}")
    fun getDeployedContract(@PathVariable deployedContractId: String): ContractDeploy {
        return contractDeployService.getDeployContract(deployedContractId.toLong())
    }

    @GetMapping("deployed/contracts")
    fun getDeployedContractByService(@RequestParam(name = "serviceId") serviceId : String?, @RequestParam(name = "chainSeq") chainSeq : String? ): ArrayList<ContractDeploy> {
        return if(serviceId != null && chainSeq != null)
            contractDeployService.getDeployContracts(serviceId.toLong(), chainSeq.toLong() )
        else if(serviceId != null)
            contractDeployService.getDeployContractsByService(serviceId.toLong())
        else if(chainSeq != null)
            contractDeployService.getDeployContractsByChin(chainSeq.toLong())
        else
            contractDeployService.getDeployContracts()
    }

    @PostMapping("deployed/contracts")
    fun registerDeployContract(@RequestBody contractDeployRequestDto: ContractDeployRequestDto): ContractDeploy {
        return contractDeployService.registerDeployContract(contractDeployRequestDto)
    }
}
