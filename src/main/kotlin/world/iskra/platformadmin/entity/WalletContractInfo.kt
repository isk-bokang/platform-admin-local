package world.iskra.platformadmin.entity

import org.hibernate.Hibernate
import javax.persistence.*

@Entity
@Table(
    name = WalletContractInfo.TABLE_NAME,
    uniqueConstraints = [
        UniqueConstraint(
        columnNames = ["deployed_contract_id", "contract_role_id"])
    ]

)
data class WalletContractInfo(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne()
    @JoinColumn(name = "wallet_id")
    var wallet : Wallet,

    @ManyToOne()
    @JoinColumn(name = "deployed_contract_id")
    var deployedContract : DeployedContract? = null,

    @ManyToOne()
    @JoinColumn(name = "contract_role_id")
    var contractRole : ContractRole ? = null,
)
{
    companion object{
        const val TABLE_NAME = "wallet_contract_info"
    }



    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || Hibernate.getClass(this) != Hibernate.getClass(other)) return false
        other as WalletContractInfo

        return id != null && id == other.id
    }

    override fun hashCode(): Int = javaClass.hashCode()

    @Override
    override fun toString(): String {
        return this::class.simpleName + "(id = $id , wallet = $wallet , deployedContract = $deployedContract , role = $contractRole )"
    }
}

