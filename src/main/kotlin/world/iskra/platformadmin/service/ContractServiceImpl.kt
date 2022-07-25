package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.dto.ContractMethodParamResponseDto
import world.iskra.platformadmin.dto.ParamDto
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.repository.ContractRepository
import java.util.*
import kotlin.collections.ArrayList

@Service
@RequiredArgsConstructor
class ContractServiceImpl(
    private val contractRepository: ContractRepository
) : IContractService {

    override fun getContracts(): ArrayList<Contract> {
        return contractRepository.findAll() as ArrayList<Contract>
    }

    override fun getContract(contractId: Long): Contract {
        return contractRepository.findById(contractId).orElse(Contract());
    }

    override fun registerContract(contract: Contract): Contract {
        return contractRepository.save(contract)
    }

    override fun getMethodParams(contract: Contract, methodName: String?): List<ContractMethodParamResponseDto> {
        val ret: MutableList<ContractMethodParamResponseDto> =
            emptyList<ContractMethodParamResponseDto>().toMutableList()

        if (contract.abi == null) return emptyList()
        var newAbi = contract.abi ?: return emptyList()

        if (methodName != null) {
            newAbi = if(methodName.uppercase(Locale.getDefault()) == "CONSTRUCTOR"){
                contract.abi!!.filter {
                   ((it["type"] as String).uppercase(Locale.getDefault()) == "CONSTRUCTOR")
                }
            } else
                contract.abi!!.filter { it["name"] == methodName }
        }

        for (i in newAbi) {
            if ( !i.containsKey("type") || !i.containsKey("inputs") ) continue
            ret.add(
                @Suppress("UNCHECKED_CAST")
                ContractMethodParamResponseDto( i["name"] as String?,
                    i["type"] as String,
                    (i["inputs"] as List<Map<String, String>>).map {
                        ParamDto(
                            it["internalType"],
                            it["type"],
                            it["name"]
                        )
                    })
            )
        }
        return ret;
    }

    override fun getContractTypes(): List<String> {
        val ret : MutableList<String> = mutableListOf()

        ret.add(enumValues<Contract.ContractType>().joinToString { it.name })
        return ret
    }
}
