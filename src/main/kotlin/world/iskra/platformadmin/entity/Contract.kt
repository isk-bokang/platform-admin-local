package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "contract")
data class Contract (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contract_id", nullable = false)
    var id: Long? = null,
    var name : String = "",

    var contractType : String = "",
    val bytecode : String = "0x",
    val abi : String = "{}"
)