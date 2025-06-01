//GLADIADORES Y GRUPOS

class GladiadorMirmillon{
    var vida = 100
    var destreza = 15
    var fuerza 
    var arma
    var armadura 

    method vida() = vida

    method fuerza() = fuerza

    method puedePelear() = vida > 1

    method dañoRecibido(daño)
        {vida = (vida - daño).max(0)}

    method armaAUtilizar(unArma)
        {arma = unArma}

    method poderDeAtaque() = 
        fuerza + arma.valorDeAtaque()

    method atacarA(unGladiador){
        unGladiador.dañoRecibido(self.poderDeAtaque() - unGladiador.defenza())}

    method contraatacar(unGladiador){
        self.atacarA(unGladiador)}
  
    method defenza() = destreza + armadura.puntos()

    method recibirCuracion(){
        vida = (vida + 100).min(100)}

    method crearGrupo(unGladiador){
        const grupo = new Grupo 
        (nombre = "Mirmillolandia", integrantes = [self, unGladiador] ,cantidadDePeleas = 0)
    }
}


class GladiadorDimachaerus{
    var vida = 100
    var destreza 
    var fuerza = 10
    var armas = #{}

    method vida() = vida

    method fuerza() = fuerza 

    method puedePelear() = vida > 1

    method dañoRecibido(daño)
        {vida = (vida - daño).max(0)}

    method armaAUtilizar(unArma)
        {armas.add(unArma)}

    method poderDeAtaque() = 
        fuerza + armas.sum({a => a.poderDeAtaque()})

    method atacarA(unGladiador){
        unGladiador.dañoRecibido(self.poderDeAtaque() - unGladiador.defenza())
        destreza += 1}

    method contraatacar(unGladiador){
        self.atacarA(unGladiador)}
    
    method recibirCuracion(){
        vida = (vida + 100).min(100)}

    method crearGrupo(unGladiador){
        const grupo = new Grupo 
        (nombre = "D- " + (self.poderDeAtaque() + unGladiador.poderDeAtaque()).toString(), integrantes = [self, unGladiador] ,cantidadDePeleas = 0)
    }
  }


class Grupo {
    const nombre
    const integrantes = #{}
    var cantidadDePeleas

    method agregarGladiador(unGladiador){
        integrantes.add(unGladiador)}

    method quitarGladiador(unGladiador){
        integrantes.remove(unGladiador)}

    method combatirCon(unGladiadorOMuchos){
        integrantes.forEach({i, u => i.atacarA(u)})
    }
    method gladiadoresEnCondiciones() = 
        integrantes.filter({i => i.puedePelear()})

    method campeon() = self.gladiadoresEnCondiciones().max({i => i.fuerza()})    
}

//fijarme si es necesario 2 metodos para combatir 