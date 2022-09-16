package world.iskra.platformadmin.entity

import world.iskra.platformadmin.dto.ContractRoleDto
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table
import javax.persistence.UniqueConstraint

@Entity
@Table(
    name = "contract_role",
    uniqueConstraints = [
        UniqueConstraint(
            columnNames = ["contract_id", "onChainName", "name"]
        )
    ]
)
class ContractRole(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne
    @JoinColumn(name = "contract_id", nullable = false)
    var contract: Contract? = null,


    @Column(nullable = false)
    var onChainName: String? = null,

    @Column(nullable = false)
    var name: String? = null
) {

    fun toDto(): ContractRoleDto? {
        return if (this.id == null || this.contract == null || this.onChainName == null || this.name == null)
            null
        else {
            ContractRoleDto(
                this.id!!,
                this.name!!,
                this.onChainName!!,
                this.contract!!.id!!
            )
        }
    }

}