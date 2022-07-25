package world.iskra.platformadmin.service

import world.iskra.platformadmin.dto.ContractMethodParamResponseDto
import world.iskra.platformadmin.entity.Contract

interface IContractService {
    fun getContracts(): ArrayList<Contract>
    fun getContract(contractId: Long): Contract
    fun registerContract(contract: Contract): Contract

    fun getMethodParams(contract : Contract, methodName : String? ): List<ContractMethodParamResponseDto>

    fun getContractTypes() : List<String>;
}
