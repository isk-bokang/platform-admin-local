package world.iskra.platformadmin.service

import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.DeployedContractInfo

interface IDeployedContractService {
    fun registerDeployContract(contractDeployRequestDto: ContractDeployRequestDto): DeployedContract
    fun getDeployedContracts(): ArrayList<DeployedContract>
    fun getDeployedContractsByService(serviceId: Long): ArrayList<DeployedContract>
    fun getDeployedContractsByChain(chainSeq: Long): ArrayList<DeployedContract>
    fun getDeployedContract(contractDeployId: Long): DeployedContractInfo?
    fun getDeployedContracts(appId: Long?, chainSeq: Long?, contractId: Long?): List<DeployedContractInfo>
}
