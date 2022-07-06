package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.repository.ContractRepository

@Service
@RequiredArgsConstructor
class ContractService(
    private val contractRepository : ContractRepository
) : IContractService
 {

    override fun getContracts(): ArrayList<Contract> {
        return contractRepository.findAll() as ArrayList<Contract>
    }
    override fun getContract(contractId : Long) : Contract {
        return contractRepository.findById(contractId).orElse(Contract());
    }
    override fun registerContract(contract : Contract) : Contract{
        return contractRepository.save(contract)
    }
}
