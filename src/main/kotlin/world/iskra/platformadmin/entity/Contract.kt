package world.iskra.platformadmin.entity

import com.vladmihalcea.hibernate.type.json.JsonBinaryType
import org.hibernate.annotations.Type
import org.hibernate.annotations.TypeDef
import world.iskra.platformadmin.dto.ContractDto
import javax.persistence.*

@Entity
@Table(name = "contract")
@TypeDef(name = "jsonb", typeClass = JsonBinaryType::class)
data class Contract(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "contract_id", nullable = false)
    var id: Long? = null,
    var name: String = "",

    @ManyToOne
    @JoinColumn(name = "contract_type", nullable = false)
    var contractType: ContractType? = null,


    @Type(type = "text")
    @Column(nullable = false)
    var bytecode: String? = null,

    @Type(type = "jsonb")
    @Column(nullable = false, columnDefinition = "jsonb")
    val abi: List<Map<String, Any>>? = null,


    ) {
    fun toDto(): ContractDto {
        return ContractDto(id = this.id, name = this.name, contractType = this.contractType?.name)
    }

    //@TODO Separate into Table (relate to Wallet Role)


}
