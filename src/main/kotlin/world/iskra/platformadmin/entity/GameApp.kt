package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "app")
data class GameApp (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,
    var name: String = "",
    var category :String = ""
)