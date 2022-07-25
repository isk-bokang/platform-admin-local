package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.repository.ServiceRepository
import world.iskra.platformadmin.entity.GameApp as EntityService

@Service
@RequiredArgsConstructor
class ServiceService(
    private val serviceRepository: ServiceRepository
) {
    fun getService(serviceId : Long): EntityService {
        return serviceRepository.findById(serviceId).orElse( EntityService() )
    }

    fun getServices() : ArrayList<EntityService>{
        return serviceRepository.findAll() as ArrayList<EntityService>
    }
}