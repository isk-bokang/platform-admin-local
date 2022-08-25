package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo
import world.iskra.platformadmin.repository.WalletContractInfoRepository
import world.iskra.platformadmin.repository.WalletRepository
import javax.transaction.Transactional


@Service
@RequiredArgsConstructor
class WalletService (
    private val walletRepository: WalletRepository,
    private val walletContractInfoRepository: WalletContractInfoRepository){
    fun getWallet(walletId : Long): Wallet {
        return walletRepository.findById(walletId).orElse(Wallet())
    }
    fun getWalletRoles(): List<String>{
        val ret: MutableList<String> = mutableListOf()

        enumValues<WalletContractInfo.Role>().joinToString { ret.add(it.name); it.name }
        return ret
    }

    fun getWallets(): List<Wallet> {
        return walletRepository.findAll() as ArrayList
    }
    @Transactional
    fun updateWallet(walletId : Long, wallet : Wallet): Wallet? {
        val targ = walletRepository.findById(walletId).orElse(Wallet())
        if(targ.id == null);
        else{
            targ.name = wallet.name
            targ.accountAddress = wallet.accountAddress
        }
        return targ
    }

    fun registerWallet(wallet :Wallet): Wallet {
        return walletRepository.save(wallet)
    }

    fun deleteWallet(walletId : Long){
        if(walletContractInfoRepository.existsByWallet_Id(walletId)){
            // @TODO Need to check relate attribute
        }
        else{
            walletRepository.deleteById(walletId)
        }
    }

}
