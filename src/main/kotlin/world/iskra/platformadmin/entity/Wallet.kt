package world.iskra.platformadmin.entity

import com.fasterxml.jackson.annotation.JsonIgnore
import org.hibernate.Hibernate
import world.iskra.platformadmin.dto.WalletDto
import javax.persistence.*

@Entity
data class Wallet(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @Column(nullable = false, unique = true)
    var accountAddress: String? = null,

    var name : String ?= null,

    @OneToMany(mappedBy = "wallet")
    @JsonIgnore
    var walletContractInfoList: MutableList<WalletContractInfo> = mutableListOf()
) {
    fun toDto(): WalletDto {
        return WalletDto(this.id, this.accountAddress)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other == null || Hibernate.getClass(this) != Hibernate.getClass(other)) return false
        other as Wallet

        return id != null && id == other.id
    }

    override fun hashCode(): Int = javaClass.hashCode()

    @Override
    override fun toString(): String {
        return this::class.simpleName + "(id = $id , accountAddress = $accountAddress )"
    }

}
