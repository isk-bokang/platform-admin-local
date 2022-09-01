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

    @Enumerated(EnumType.STRING)
    @Column(name = "contract_type")
    var contractType: ContractType? = null,

    @Type(type = "text")
    @Column(nullable = false)
    var bytecode: String? = null,

    @Type(type = "jsonb")
    @Column(nullable = false, columnDefinition = "jsonb")
    //@Convert(converter = AbiConverter::class)
    val abi: List<Map<String, Any>>? = null,


    ) {
    fun toDto(): ContractDto {
        return ContractDto(id = this.id, name = this.name, contractType = this.contractType)
    }

    //@TODO Separate into Table (relate to Wallet Role)
    enum class ContractType {
        NONE,
        GAME_TOKEN,
        GAME_NFT,
        ISKRA_MKP,
        ISKRA_DEX;

        companion object {
            fun toEnum(target: String?): ContractType? {
                var ret: ContractType? = null
                if (target != null) {
                    ret = try {
                        enumValueOf<ContractType>(target)
                    } catch (e: Exception) {
                        NONE
                    }
                }
                return ret
            }
        }
    }
}
