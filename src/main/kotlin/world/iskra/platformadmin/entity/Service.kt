package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "service")
data class Service (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,
    var name: String = "",
    var category :String = ""
)