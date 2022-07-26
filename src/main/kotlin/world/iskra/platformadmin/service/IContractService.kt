package world.iskra.platformadmin.service

import world.iskra.platformadmin.dto.ContractMethodParamResponseDto
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.projections.ContractInfo

interface IContractService {
    fun getContracts(): ArrayList<ContractInfo>
    fun getContracts(contractType: Contract.ContractType?, contractName : String?): List<ContractInfo>
    fun getContract(contractId: Long): Contract
    fun registerContract(contract: Contract): Contract

    fun getMethodParams(contract : Contract, methodName : String? ): List<ContractMethodParamResponseDto>

    fun getContractTypes() : List<String>
}
