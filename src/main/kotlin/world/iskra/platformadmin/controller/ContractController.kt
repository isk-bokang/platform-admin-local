package world.iskra.platformadmin.controller

import lombok.RequiredArgsConstructor
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.dto.ContractMethodParamResponseDto
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.ContractType
import world.iskra.platformadmin.entity.projections.ContractInfo
import world.iskra.platformadmin.service.ContractService
import world.iskra.platformadmin.service.ContractTypeService

@RestController
@RequiredArgsConstructor
class ContractController(
    private val contractService: ContractService,
    private val contractTypeService: ContractTypeService
) {
    @GetMapping("/contracts/{contractId}")
    fun getContract(@PathVariable contractId: String): Contract {
        return contractService.getContract(contractId.toLong())
    }

    @PostMapping("/contracts")
    fun registerContract(@RequestBody contract: Contract): Contract {
        return contractService.registerContract(contract)
    }

    @GetMapping("/contracts/{contractId}/methods")
    fun getContractMethodParams(
        @PathVariable contractId: String,
        @RequestParam(name = "methodName") methodName: String?
    ): List<ContractMethodParamResponseDto> {
        val contract = getContract(contractId)
        contract.abi?.map{
        }
        if (contract.id == null) {
            return emptyList()
        }
        return contractService.getMethodParams(contract, methodName)
    }


    @GetMapping("/contracts")
    fun getContracts(@RequestParam(name = "contractType") contractType : String?,
                     @RequestParam(name = "platformName") platformName : String?,
                     @RequestParam(name = "contractName") contractName : String?, ): List<ContractInfo> {


        return contractService.getContracts(contractType, platformName, contractName)
    }

    @GetMapping("/contracts/types")
    fun getContractTypes(@RequestParam(name = "contractTypeName")contractTypeName : String?,
                         @RequestParam(name = "platformName") platformName : String?)
    :  List<ContractType> = contractTypeService.getContractTypes(contractTypeName,platformName)


}
