package world.iskra.platformadmin.service

import com.klaytn.caver.Caver
import com.klaytn.caver.contract.Contract
import com.klaytn.caver.contract.ContractDeployParams
import com.klaytn.caver.contract.SendOptions
import com.klaytn.caver.transaction.response.TransactionReceiptProcessor
import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.entity.Contract as EntityContract
import world.iskra.platformadmin.repository.ContractDeployRepository

@Service
@RequiredArgsConstructor
class ContractDeployServiceImpl(
    private val contractDeployRepository: ContractDeployRepository,
    private val contractService: IContractService,

) {
    private var contract : Contract? = null
    private fun createContract(caver: Caver, abi : String){
        contract = Contract.create(caver, abi);
    }

    private fun deployContract(from : String, bytecode : String, deployParams: List<Any>): String {
        val sendOpt : SendOptions = SendOptions(from)
        val contractParam : ContractDeployParams = ContractDeployParams(bytecode, deployParams)

        return contract?.deploy(contractParam,sendOpt)?.contractAddress ?: ""
    }



    fun registerDeployContract(serviceId : Long, contractId : Long){

    }

    fun getDeployContracts(){

    }

    fun getDeployContract(){

    }
}
