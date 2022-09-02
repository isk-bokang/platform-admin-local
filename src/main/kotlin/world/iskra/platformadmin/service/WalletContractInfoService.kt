package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Contract
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo
import world.iskra.platformadmin.repository.WalletContractInfoRepository

@Service
@RequiredArgsConstructor
class WalletContractInfoService(
    private val walletContractInfoRepository: WalletContractInfoRepository,

) {
    fun registerWalletContractInfo(deployedContractId: Long, walletId : Long, role : WalletContractInfo.Role): WalletContractInfo {
        val deployedContract = DeployedContract(id = deployedContractId)
        val wallet= Wallet(id = walletId)
        return registerWalletContractInfo(deployedContract, wallet, role)
    }

    fun registerWalletContractInfo(deployedContract: DeployedContract?, wallet : Wallet, role: WalletContractInfo.Role): WalletContractInfo {
        return walletContractInfoRepository.save(
            WalletContractInfo(wallet = wallet, deployedContract = deployedContract, role = role)
        )
    }

    fun getWalletRoles(): List<String> {
        val ret: MutableList<String> = mutableListOf()
        enumValues<WalletContractInfo.Role>().joinToString { ret.add(it.name); it.name }
        return ret
    }

    fun grantRole(walletId : Long, deployedContractId: Long, role: WalletContractInfo.Role): WalletContractInfo {
        if(role != WalletContractInfo.Role.NONE) {
            val delTarget = walletContractInfoRepository.findIdByDeployedContractIdAndRole(role, deployedContractId)
            if (delTarget != null) {
                println("DELETE : " + delTarget)
                walletContractInfoRepository.deleteById(delTarget)
            }
        }
        return registerWalletContractInfo(deployedContractId, walletId, role)
    }

    fun findTarg(contractId : Long, role: WalletContractInfo.Role): Long? {
        return walletContractInfoRepository.findIdByDeployedContractIdAndRole(role,contractId)
    }



}
