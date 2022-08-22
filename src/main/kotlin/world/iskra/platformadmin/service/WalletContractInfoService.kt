package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
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

    fun registerWalletContractInfo(deployedContract: DeployedContract, wallet : Wallet, role: WalletContractInfo.Role): WalletContractInfo {
        return walletContractInfoRepository.save(
            WalletContractInfo(wallet = wallet, deployedContract = deployedContract, role = role)
        )
    }
}