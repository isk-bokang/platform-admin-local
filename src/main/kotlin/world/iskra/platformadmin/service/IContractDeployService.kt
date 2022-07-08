package world.iskra.platformadmin.service

import world.iskra.platformadmin.dto.ContractDeployRequestDto
import world.iskra.platformadmin.entity.ContractDeploy

interface IContractDeployService {
    fun registerDeployContract(contractDeployRequestDto: ContractDeployRequestDto): ContractDeploy
    fun getDeployContracts(): ArrayList<ContractDeploy>
    fun getDeployContractsByService(serviceId: Long): ArrayList<ContractDeploy>
    fun getDeployContractsByChin(chainSeq: Long): ArrayList<ContractDeploy>
    fun getDeployContract(contractDeployId: Long): ContractDeploy
}