package world.iskra.platformadmin.repository;

import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.CrudRepository
import world.iskra.platformadmin.entity.Contract

interface ContractRepository : CrudRepository<Contract, Long> {




}