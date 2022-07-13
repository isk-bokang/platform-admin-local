package world.iskra.platformadmin.controller

import lombok.RequiredArgsConstructor
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.service.ServiceService
import world.iskra.platformadmin.entity.Service as EntityService


@RestController
@RequiredArgsConstructor
class ServiceController(
    private val serviceService: ServiceService
) {
    @GetMapping("services")
    fun getServiceList(): ArrayList<EntityService> {
        return serviceService.getServices()
    }

    @GetMapping("services/{serviceId}")
    fun getService(@PathVariable serviceId : String) : EntityService{
        return serviceService.getService(serviceId.toLong())
    }
}