package world.iskra.platformadmin.entity

import org.hibernate.Hibernate
import javax.persistence.*

@Entity
data class WalletContractInfo(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne
    @JoinColumn(name = "wallet_id")
    var wallet : Wallet,

    @ManyToOne
    @JoinColumn(name = "deployed_contract_id")
    var deployedContract : DeployedContract? = null,

    @Enumerated(EnumType.STRING)
    var role : Role ? = null,
)
{
    enum class Role{
        DEPLOYER,
        OWNER,
        FEE_RECEIVER,
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
        return this::class.simpleName + "(id = $id , wallet = $wallet , deployedContract = $deployedContract , role = $role )"
    }
}

