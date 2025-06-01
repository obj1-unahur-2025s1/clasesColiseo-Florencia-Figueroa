import Armas.*
import Gladiadores.*

object coliseo {
    const grupoDeGladiadores = #{}

    method curarGladiador(unGladiador) {
        unGladiador.recibirCuracion()
    }

    method curarGladiadores() {
        grupoDeGladiadores.forEach({g => g.recibirCuracion()})
    }

    method combatirEnGrupos(gradiadores, otrosGradiadores) {
        gradiadores.combatirCon(gradiadores)
    }

    method combatirConGladiador(gradiadores, unGladiador) {
        gradiadores.combatirCon(unGladiador)
    }
}