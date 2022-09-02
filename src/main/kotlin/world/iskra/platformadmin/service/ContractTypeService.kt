package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.ContractType
import world.iskra.platformadmin.repository.ContractTypeRepository

@RequiredArgsConstructor
@Service
class ContractTypeService(
    private val contractTypeRepository: ContractTypeRepository
) {
    fun getContractTypes(
        contractTypeName : String?,
        platformName : String?
    ) : List<ContractType> = contractTypeRepository.findByNameContainsIgnoreCaseAndPlatformNameContainsIgnoreCase(contractTypeName ?: "", platformName ?: "")

    fun getContractType(
        contractTypeId : Long
    ) : ContractType = contractTypeRepository.findById(contractTypeId).orElse(ContractType())

    fun registerContractType(
        contractTypeName : String?,
        platformName: String?
    ) = contractTypeRepository.save(ContractType(name = contractTypeName, platformName = platformName))
}
