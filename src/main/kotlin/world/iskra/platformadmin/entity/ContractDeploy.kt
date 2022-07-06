package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "contract_deploy")
data class ContractDeploy (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne
    @JoinColumn(name = "service_id", nullable = false)
    var service: Service? = null,

    @ManyToOne
    @JoinColumn(name = "contract_id", nullable = false)
    var contract: Contract? = null,

    @ManyToOne
    @JoinColumn(name = "chain_id", nullable = false)
    var chain: Chain? = null,

    @Column(nullable = false)
    var address : String = "",

    var txHash : String = "0x",


)