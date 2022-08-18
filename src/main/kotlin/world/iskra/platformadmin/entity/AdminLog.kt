package world.iskra.platformadmin.entity

import org.hibernate.annotations.ColumnDefault

import java.util.Date
import javax.persistence.*

@Entity
@Table(name = "admin_log")
data class AdminLog(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column( nullable = false)
    var id: Long? = null,

    @Column( updatable = false)
    val responsibility : String?=null,

    @ColumnDefault("now()")
    @Column( insertable = false, updatable = false)
    val createAt : Date? = null,

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    val platform : PlatformType = PlatformType.NONE,

    @Column(nullable = false)
    val category : String,

    @Column(  updatable = false)
    val originValue : String? = null,

    @Column(  updatable = false)
    val updateValue : String? = null,

    val txHash : String? = null,

    val status : String ? = null,
    ){
    enum class PlatformType{
        NONE,
        MARKETPLACE,
        DEX,
        GAME_CONSOLE,
        PORTAL;

        companion object {
            fun toEnum(target: String?): PlatformType? {
                var ret: PlatformType? = null
                if (target != null) {
                    ret = try {
                        enumValueOf<PlatformType>(target)
                    } catch (e: Exception) {
                        NONE
                    }
                }
                return ret
            }
        }
    }

}