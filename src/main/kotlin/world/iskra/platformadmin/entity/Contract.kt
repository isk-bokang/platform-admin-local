package world.iskra.platformadmin.entity
import org.hibernate.annotations.Type
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

    @Type(type = "text")
    @Column(nullable = false)
    val bytecode : String = "0x",

    @Type(type = "text")
    @Column(nullable = false)
    val abi : String? = null

)