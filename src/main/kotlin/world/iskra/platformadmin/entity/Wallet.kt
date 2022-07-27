package world.iskra.platformadmin.entity

import world.iskra.platformadmin.dto.WalletDto
import javax.persistence.*

@Entity
@Table(name = "wallet")
data class Wallet (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    val privateKey : String? = null,
    val accountAddress: String? = null
){
    fun toDto(): WalletDto {
        return WalletDto(this.id, this.accountAddress)
    }
}