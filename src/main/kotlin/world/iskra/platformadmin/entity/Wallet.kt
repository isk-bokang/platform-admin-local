package world.iskra.platformadmin.entity

import world.iskra.platformadmin.dto.WalletDto
import javax.persistence.*

@Entity
@Table(name = "wallet")
data class Wallet(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,
    @Column(nullable = false)
    val privateKey: String? = null,
    @Column(nullable = false)
    val accountAddress: String? = null
) {
    fun toDto(): WalletDto {
        return WalletDto(this.id, this.accountAddress)
    }
}