package world.iskra.platformadmin.entity

import com.fasterxml.jackson.annotation.JsonIgnore
import org.hibernate.Hibernate
import javax.persistence.*

@Entity
data class DeployedContract(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne
    @JoinColumn(name = "app_id")
    var gameApp: GameApp? = null,

    var name: String? = null,

    @ManyToOne
    @JoinColumn(name = "contract_id", nullable = false)
    var contract: Contract? = null,

    @ManyToOne
    @JoinColumn(name = "chain_seq", nullable = false)
    var chain: Chain? = null,

    @Column(nullable = false)
    var address: String = "",

    @Column(nullable = false)
    var deployerAddress: String = "",

    @OneToMany(mappedBy = "deployedContract")
    @JsonIgnore
    var walletContractInfoList: MutableList<WalletContractInfo> = mutableListOf()

) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || Hibernate.getClass(this) != Hibernate.getClass(other)) return false
        other as DeployedContract

        return id != null && id == other.id
    }

    override fun hashCode(): Int = javaClass.hashCode()

    @Override
    override fun toString(): String {
        return this::class.simpleName + "(id = $id , gameApp = $gameApp , name = $name , contract = $contract , chain = $chain , address = $address , deployerAddress = $deployerAddress )"
    }
}
