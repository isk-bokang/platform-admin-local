package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.dto.ContractMethodParamResponseDto
import world.iskra.platformadmin.dto.ParamDto
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.projections.ContractInfo
import world.iskra.platformadmin.repository.ContractRepository
import java.util.*
import kotlin.collections.ArrayList

@Service
@RequiredArgsConstructor
class ContractService(
    private val contractRepository: ContractRepository
)  {

    fun getContracts(): ArrayList<ContractInfo> {
        return contractRepository.findAllWrappedProjection() as ArrayList<ContractInfo>
    }

    fun getContracts(contractTypeName: String?, platformName : String?, contractName: String?)
    : List<ContractInfo> = contractRepository.getContracts(contractName ?: "", platformName ?: "", contractTypeName ?: "")

    fun getContract(contractId: Long): Contract {
        val ret = contractRepository.findById(contractId).orElse(Contract())

        return ret
    }

    fun registerContract(contract: Contract): Contract {
        return contractRepository.save(contract)
    }

    fun getMethodParams(contract: Contract, methodName: String?): List<ContractMethodParamResponseDto> {
        val ret: MutableList<ContractMethodParamResponseDto> =
            emptyList<ContractMethodParamResponseDto>().toMutableList()

        if (contract.abi == null) return emptyList()
        var newAbi = contract.abi ?: return emptyList()

        if (methodName != null) {
            newAbi = if (methodName.uppercase(Locale.getDefault()) == "CONSTRUCTOR") {
                contract.abi!!.filter {
                    (((it["type"].toString()).uppercase(Locale.getDefault()).contains("CONSTRUCTOR")))
                }
            } else
                contract.abi!!.filter { it["name"].toString() == methodName }
        }

        for (i in newAbi) {
            if (i["type"].toString().isEmpty() || ((i["inputs"] as List<*>).isEmpty())) continue
            ret.add(
                @Suppress("UNCHECKED_CAST")
                ContractMethodParamResponseDto(i["name"].toString(),
                    i["type"].toString(),
                    (i["inputs"] as List<Map<String, *>>).map {
                        ParamDto(
                            it["internalType"].toString(),
                            it["type"].toString(),
                            it["name"].toString()
                        )
                    })
            )
        }

        return ret
    }

}
