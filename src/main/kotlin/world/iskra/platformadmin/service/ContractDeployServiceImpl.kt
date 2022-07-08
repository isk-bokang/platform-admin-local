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

    fun registerDeployContract(serviceId : Long, contractId : Long, chainSeq : Long){

    }

    fun getDeployContracts(){

    }

    fun getDeployContract(){

    }
}
