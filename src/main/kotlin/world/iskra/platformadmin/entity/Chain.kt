package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "chain")
data class Chain (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column( nullable = false)
    var chainSeq: Long? = null,

    val chainId: String = "",
    val chainName : String = "",
    val networkId : String = ""
)