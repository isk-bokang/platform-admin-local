package world.iskra.platformadmin.entity

import javax.persistence.*

@Entity
@Table(name = "deployed_contract")
data class DeployedContract (
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne
    @JoinColumn(name = "app_id", nullable = false)
    var gameApp: GameApp? = null,

    @ManyToOne
    @JoinColumn(name = "contract_id", nullable = false)
    var contract: Contract? = null,

    @ManyToOne
    @JoinColumn(name = "chain_seq", nullable = false)
    var chain: Chain? = null,

    @Column(nullable = false)
    var address : String = "",

    @ManyToOne
    @JoinColumn(name = "wallet_id", nullable = false)
    var wallet : Wallet? = null

){

}
