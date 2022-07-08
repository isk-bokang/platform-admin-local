package world.iskra.platformadmin.entity

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
)