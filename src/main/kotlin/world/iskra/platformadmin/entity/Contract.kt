package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "contract")
data class Contract (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null
)