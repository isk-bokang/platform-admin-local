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
    var chainId: Long? = null,

    var name : String? = null,

    @Column( nullable = false)
    var rpcUrl : String? = null,

    @Enumerated(EnumType.STRING)
    @Column(name = "chain_type", nullable = false)
    var chainType: ChainType? = null
){
    enum class ChainType{
        MAIN_CHAIN,
        TEST_CHAIN,
        GAME_CHAIN,
        TEST_GAME_CHAIN;
        companion object {
            fun toEnum(target: String?) : ChainType? {
                var ret : ChainType? = null
                if (target != null) {
                    ret = try {
                        enumValueOf<ChainType>(target)
                    } catch (e: Exception) {
                        null
                    }
                }
                return ret
            }
        }
    }

    fun modify(targ: Chain): Chain {
        if(targ.chainId != null)
            this.chainId = targ.chainId
        if(targ.name != null)
            this.name = targ.name
        if(targ.rpcUrl != null)
            this.rpcUrl = targ.rpcUrl
        if(targ.chainType != null)
            this.chainType = targ.chainType
        return this
    }


}