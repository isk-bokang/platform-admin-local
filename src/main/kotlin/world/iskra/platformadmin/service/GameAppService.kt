package world.iskra.platformadmin.service

import lombok.RequiredArgsConstructor
import org.springframework.stereotype.Service
import world.iskra.platformadmin.repository.GameAppRepository
import world.iskra.platformadmin.entity.GameApp

@Service
@RequiredArgsConstructor
class GameAppService(
    private val gameAppRepository: GameAppRepository
) {
    fun getApp(appId : Long): GameApp {
        return gameAppRepository.findById(appId).orElse( GameApp() )
    }

    fun getApps() : ArrayList<GameApp>{
        return gameAppRepository.findAll() as ArrayList<GameApp>
    }
}