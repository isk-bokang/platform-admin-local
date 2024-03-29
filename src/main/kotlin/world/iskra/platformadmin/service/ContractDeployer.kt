package world.iskra.platformadmin.service

import com.klaytn.caver.Caver
import com.klaytn.caver.contract.Contract
import com.klaytn.caver.contract.ContractDeployParams
import com.klaytn.caver.contract.SendOptions

class ContractDeployer(
    private val caver: Caver,
    private val abi: String
) {
    private val contract: Contract by lazy {
        Contract.create(caver, abi)
    }
    private var deployedContract: Contract? = null

    fun deploy(fromAddress: String, byteCode: String, deployParams: List<Any>): Contract {
        val sendOpt = SendOptions(fromAddress)
        sendOpt.gas = "1000000"
        val contractParam = ContractDeployParams(byteCode, deployParams)
        deployedContract = contract.deploy(contractParam, sendOpt)
        return deployedContract!!
    }

    fun getDeployedAddress(): String? {
        return deployedContract?.contractAddress
    }


}