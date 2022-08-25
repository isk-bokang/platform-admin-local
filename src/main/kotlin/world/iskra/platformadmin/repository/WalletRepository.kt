package world.iskra.platformadmin.repository

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Wallet

interface WalletRepository : CrudRepository<Wallet, Long> {

}