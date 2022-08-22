package world.iskra.platformadmin.repository

import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.WalletContractInfo

interface WalletContractInfoRepository : CrudRepository<WalletContractInfo, Long> {
}