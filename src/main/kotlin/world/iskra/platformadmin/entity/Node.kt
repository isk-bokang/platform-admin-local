package world.iskra.platformadmin.entity

import javax.persistence.*


@Entity
@Table(name = "Node")
data class Node(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    var id: Long? = null,

    @ManyToOne
    @JoinColumn(name = "chain_seq", nullable = false )
    var chain : Chain? = null,

    var nodeType : String = "",
    var ipAddress : String = "",
)
