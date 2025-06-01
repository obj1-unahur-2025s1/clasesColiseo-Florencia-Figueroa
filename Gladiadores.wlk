//GLADIADORES

class GladiadorMirmillon{
    var vida = 100
    var destreza = 15
    var fuerza 
    var arma
    var armadura 

    method vida() = vida

    method dañoRecibido(daño)
        {vida = vida - daño}

    method armaAUtilizar(unArma)
        {arma = unArma}

    method poderDeAtaque() = 
        fuerza + arma.valorDeAtaque()

    method atacarA(unGladiador){
        unGladiador.dañoRecibido(self.poderDeAtaque() - unGladiador.defenza())}

    method contraatacar(unGladiador){
        self.atacarA(unGladiador)}
  
    method defenza() = destreza + armadura.puntos()
  
}

class GladiadorDimachaerus{
    var vida = 100
    var destreza 
    var fuerza = 10
    var armas = #{}

    method vida() = vida

    method dañoRecibido(daño)
        {vida = vida - daño}

    method armaAUtilizar(unArma)
        {armas.add(unArma)}

    method poderDeAtaque() = 
        fuerza + armas.sum({a => a.poderDeAtaque()})

    method atacarA(unGladiador){
        unGladiador.dañoRecibido(self.poderDeAtaque() - unGladiador.defenza())
        destreza += 1}

    method contraatacar(unGladiador){
        self.atacarA(unGladiador)}
}