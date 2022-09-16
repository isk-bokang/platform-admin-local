package world.iskra.platformadmin.repository

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Wallet
import world.iskra.platformadmin.entity.WalletContractInfo


interface WalletRepository : CrudRepository<Wallet, Long> {


    @Query(
        """select w.accountAddress from Wallet w inner join w.walletContractInfoList walletContractInfoList
where walletContractInfoList.contractRole.id = ?1 and walletContractInfoList.deployedContract.id = ?2"""
    )
    fun findWalletAddressesByWalletContractInfoList_RoleAndWalletContractInfoList_DeployedContract_Id(
        role: Long,
        deployedContractId: Long
    ): List<String>

    @Query(
        """select w.accountAddress from Wallet w inner join w.walletContractInfoList walletContractInfoList
where walletContractInfoList.contractRole.id = ?1"""
    )
    fun findWalletAddressesByWalletContractInfoList_Role(
        roleId: Long
    ): List<String>
}