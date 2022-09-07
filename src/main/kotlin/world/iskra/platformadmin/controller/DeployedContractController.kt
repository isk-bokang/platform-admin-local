package world.iskra.platformadmin.controller

import lombok.RequiredArgsConstructor
import org.springframework.web.bind.annotation.*
import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.dto.DeployedContractDto
import world.iskra.platformadmin.entity.Chain
import world.iskra.platformadmin.entity.projections.ContractRoleInfo
import world.iskra.platformadmin.entity.projections.DeployedContractInfo
import world.iskra.platformadmin.service.DeployedContractService

@RestController
@RequiredArgsConstructor
class DeployedContractController(
    private val contractDeployService: DeployedContractService
) {
    @GetMapping("deployed/contracts/{deployedContractId}")
    fun getDeployedContract(@PathVariable deployedContractId: String): DeployedContractInfo? {
        return contractDeployService.getDeployedContract(deployedContractId.toLong())
    }

    @GetMapping("deployed/contracts/{deployedContractId}/roles")
    fun getContractRolesDeployedContract(@PathVariable deployedContractId: Long)
    : List<ContractRoleInfo> = contractDeployService.getContractRoleByDeployedContract(deployedContractId)


    @GetMapping("deployed/contracts")
    fun getDeployedContracts(
        @RequestParam(name = "appId") appId: String?,
        @RequestParam(name = "chainSeq") chainSeq: String?,
        @RequestParam(name = "chainId") chainId: String?,
        @RequestParam(name = "chainType") chainType: String?,
        @RequestParam(name = "contractId") contractId: String?,
        @RequestParam(name = "contractType") contractType: String?,
        @RequestParam(name = "contractName") contractName: String?,
    ): List<DeployedContractInfo> {
        val curChainType: Chain.ChainType? = Chain.ChainType.toEnum(chainType)

        return contractDeployService.getDeployedContracts(
            appId?.toLong(),
            chainSeq?.toLong(),
            chainId?.toLong(),
            contractId?.toLong(),
            contractType,
            curChainType
        )
    }

    @PostMapping("deployed/contracts")
    fun registerDeployContract(@RequestBody contractDeployRequestDto: ContractDeployRequestDto): DeployedContractDto {
        return DeployedContractDto.from(
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
        return DeployedContractDto.from(
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
