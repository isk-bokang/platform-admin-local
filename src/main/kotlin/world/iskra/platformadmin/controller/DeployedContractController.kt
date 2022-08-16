package world.iskra.platformadmin.controller

import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.dto.DeployedContractDto
import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.projections.DeployedContractInfo
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
        @RequestParam(name = "chainType") chainType: String?,
        @RequestParam(name = "contractId") contractId: String?,
        @RequestParam(name = "contractType") contractType: String?,
        @RequestParam(name = "contractName") contractName: String?,
    ): List<DeployedContractInfo> {
        val curChainType: Chain.ChainType? = Chain.ChainType.toEnum(chainType)
        val curContractType: Contract.ContractType? = Contract.ContractType.toEnum(contractType)

        return contractDeployService.getDeployedContracts(
            appId?.toLong(),
            chainSeq?.toLong(),
            contractId?.toLong(),
            curContractType,
            curChainType
        )
    }

    @PostMapping("deployed/contracts")
    fun registerDeployContract(@RequestBody contractDeployRequestDto: ContractDeployRequestDto): DeployedContractDto {
        return DeployedContractDto().from(
            contractDeployService.registerDeployedContract(
                contractDeployRequestDto.contractId,
                contractDeployRequestDto.appId,
                contractDeployRequestDto.chainSeq,
                contractDeployRequestDto.contractName,
                contractDeployRequestDto.deployerAddress,
                contractDeployRequestDto.contractAddress
            )
        )
    }

    @PostMapping("deploy")
    fun deployContract(@RequestBody contractDeployRequestDto: ContractDeployRequestDto): DeployedContractDto {
        return DeployedContractDto().from(
            contractDeployService.deployContract(
                contractDeployRequestDto.contractId,
                contractDeployRequestDto.appId,
                contractDeployRequestDto.chainSeq,
                contractDeployRequestDto.contractName,
                contractDeployRequestDto.walletId,
                contractDeployRequestDto.deployParams
            )
        )
    }


}
