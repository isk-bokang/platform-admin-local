package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.repository.WalletRepository


@Service
@RequiredArgsConstructor
class WalletService (
    private val walletRepository: WalletRepository){
    fun getWallet(walletId : Long): Wallet {
        return walletRepository.findById(walletId).orElse(Wallet())
    }
}