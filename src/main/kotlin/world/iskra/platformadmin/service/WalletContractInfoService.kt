package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.ContractRole
import world.iskra.platformadmin.entity.DeployedContract
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo
import world.iskra.platformadmin.repository.WalletContractInfoRepository

@Service
@RequiredArgsConstructor
class WalletContractInfoService(
    private val walletContractInfoRepository: WalletContractInfoRepository,

    ) {
    fun registerWalletContractInfo(
        deployedContractId: Long,
        walletId: Long,
        roleId: Long
    ): WalletContractInfo {
        val deployedContract = DeployedContract(id = deployedContractId)
        val wallet = Wallet(id = walletId)
        val contractRole = ContractRole(id = roleId)
        return registerWalletContractInfo(deployedContract, wallet, contractRole)
    }

    fun registerWalletContractInfo(
        deployedContract: DeployedContract?,
        wallet: Wallet,
        contractRole: ContractRole
    ): WalletContractInfo {
        return walletContractInfoRepository.save(
            WalletContractInfo(wallet = wallet, deployedContract = deployedContract, contractRole = contractRole)
        )
    }


    fun grantRole(walletId: Long, deployedContractId: Long, roleId: Long): WalletContractInfo {
        val delTarget = walletContractInfoRepository.findIdByDeployedContractIdAndRole(roleId, deployedContractId)
        if (delTarget != null) {
            println("DELETE : " + delTarget)
            walletContractInfoRepository.deleteById(delTarget)
        }

        return registerWalletContractInfo(deployedContractId, walletId, roleId)
    }

    fun findTarg(contractId: Long, roleId: Long): Long? {
        return walletContractInfoRepository.findIdByDeployedContractIdAndRole(roleId, contractId)
    }


}
