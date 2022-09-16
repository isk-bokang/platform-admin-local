package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.ContractRole
import world.iskra.platformadmin.entity.projections.ContractRoleInfo
import world.iskra.platformadmin.repository.ContractRoleRepository

@Service
@RequiredArgsConstructor
class ContractRoleService(
    private val contractRoleRepository: ContractRoleRepository
) {
    fun registerContractRole(
        contractId : Long,
        onChainName : String,
        name : String
    ) = contractRoleRepository.save(ContractRole(name = name, onChainName = onChainName, contract = Contract(id = contractId)))


    fun getContractRolesByContractId(contractId : Long) : List<ContractRoleInfo> = contractRoleRepository.findAllByContract_Id(contractId);

}