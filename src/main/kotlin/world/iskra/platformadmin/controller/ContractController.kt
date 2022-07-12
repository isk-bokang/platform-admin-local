package world.iskra.platformadmin.controller

import lombok.RequiredArgsConstructor
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.service.IContractService

@RestController
@RequiredArgsConstructor
class ContractController(
    private val contractService: IContractService
) {
    @GetMapping("/contracts")
    fun getContracts(): ArrayList<Contract> {
        return contractService.getContracts()
    }

    @GetMapping("/contracts/{contractId}")
    fun getContract(@PathVariable contractId: String): Contract {
        return contractService.getContract(contractId.toLong())
    }

    @PostMapping("/contracts")
    fun registerContract(@RequestBody contract : Contract): Contract {
        return contractService.registerContract(contract)
    }

}