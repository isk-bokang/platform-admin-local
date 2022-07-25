package world.iskra.platformadmin.entity
import com.vladmihalcea.hibernate.type.json.JsonBinaryType
import org.hibernate.annotations.Type
import org.hibernate.annotations.TypeDef
import javax.persistence.*

@Entity
@Table(name = "contract")
@TypeDef(name = "jsonb", typeClass = JsonBinaryType::class )
data class Contract (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contract_id", nullable = false)
    var id: Long? = null,
    var name : String = "",

    @Enumerated(EnumType.STRING)
    @Column(name = "contract_type")
    var contractType: ContractType? = null,

    @Type(type = "text")
    @Column(nullable = false)
    var bytecode : String? = null,

    @Type(type = "jsonb")
    @Column(nullable = false, columnDefinition = "jsonb")
    val abi : List<Map<String, Any>>? = null,


){
    enum class ContractType{
        ERC20,
        ERC1155
    }
}