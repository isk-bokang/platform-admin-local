package world.iskra.platformadmin.controller

import lombok.RequiredArgsConstructor
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RestController
import world.iskra.platformadmin.service.GameAppService
import world.iskra.platformadmin.entity.GameApp as EntityService


@RestController
@RequiredArgsConstructor
class GameAppController(
    private val gameAppService: GameAppService
) {
    @GetMapping("services")
    fun getServiceList(): ArrayList<EntityService> {
        return gameAppService.getApps()
    }

    @GetMapping("services/{serviceId}")
    fun getService(@PathVariable serviceId : String) : EntityService{
        return gameAppService.getApp(serviceId.toLong())
    }
}