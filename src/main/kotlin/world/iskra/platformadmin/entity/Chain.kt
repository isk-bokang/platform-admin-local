package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "chain")
data class Chain(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column( nullable = false)
    var seq: Long? = null,

    @Column( nullable = false, unique = true)
    var chainId: String? = null,

    var name : String = "",

    @Column( nullable = false)
    var rpcUrl : String? = null,

    @Enumerated(EnumType.STRING)
    @Column(name = "chain_type", nullable = false)
    var chainType: ChainType? = null
){
    enum class ChainType{
        MAIN_CHAIN,
        GAME_CHAIN,
        TEST_CHAIN
    }
}