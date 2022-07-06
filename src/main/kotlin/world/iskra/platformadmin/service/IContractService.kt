package world.iskra.platformadmin.service

import world.iskra.platformadmin.entity.Contract

interface IContractService {
    fun getContracts(): ArrayList<Contract>
    fun getContract(contractId: Long): Contract
    fun registerContract(contract: Contract): Contract
}