package world.iskra.platformadmin.entity

import javax.persistence.*


@Entity
@Table(name = "contract_type")
data class ContractType(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    var id : Long? = null,

    @Column(nullable = false)
    var name : String? = null,

    @Column(nullable = false)
    var platformName : String? = null,
)
