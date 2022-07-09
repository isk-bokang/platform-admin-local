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
    fun getDeployedContractByService(@RequestParam(name = "serviceId") serviceId : String?, @RequestParam(name = "chainId") chainId : String? ): ArrayList<ContractDeploy> {
        return if(serviceId != null && chainId != null)
            contractDeployService.getDeployContracts(serviceId.toLong(), chainId.toLong() )
        else if(serviceId != null)
            contractDeployService.getDeployContractsByService(serviceId.toLong())
        else if(chainId != null)
            contractDeployService.getDeployContractsByChin(chainId.toLong())
        else
            contractDeployService.getDeployContracts()
    }

    @PostMapping("deployed/contracts")
    fun registerDeployContract(@RequestBody contractDeployRequestDto: ContractDeployRequestDto): ContractDeploy {
        return contractDeployService.registerDeployContract(contractDeployRequestDto)
    }


}