package world.iskra.platformadmin.entity

import org.hibernate.Hibernate
import javax.persistence.*

@Entity
@Table(
    name = WalletContractInfo.TABLE_NAME,
    uniqueConstraints = [
        UniqueConstraint(
        columnNames = ["deployed_contract_id", "role"])
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

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    var role : Role ? = null,
)
{
    companion object{
        const val TABLE_NAME = "wallet_contract_info"
    }

    enum class Role{
        NONE,
        DEPLOYER,
        OWNER,
        FEE_RECEIVER;
        companion object {
            fun toEnum(target: String?): Role? {
                var ret: Role? = null
                if (target != null) {
                    ret = try {
                        enumValueOf<Role>(target)
                    } catch (e: Exception) {
                        Role.NONE
                    }
                }
                return ret
            }
        }
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

