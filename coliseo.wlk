//GLADIADORES

class GladiadorMirmillon{
  var vida = 100
  var desgaste = 15
  var fuerza 
  var arma
  var escudo 

  method atacarA(unGladiador){
    
  }
  method poderDeAtaque() = fuerza + arma.valorDeAtaque()
  //method defender() = 
  //method cambiarArma()
  //method cambiarEscudo()
}

class GladiadorDimachaerus{
  var property vida = 100
  var destreza 
  var fuerza = 10
  var armas = #{}

  // method atacar() = 
  // method defender() = 
  //method cambiarArma()
  //method cambiarEscudo()
  method poderDeAtaque() = fuerza + armas.sum({a => a.poderDeAtaque()})
}

//ARMAS

class ArmaDeFilo { //Espadas, dagas o hachas
  var property filo         //Valor entre 0 y 1
  var longitud

  method initialize() = 
    if(not filo.between(0, 1)){
      self.error("El valor del filo no es valido, insertar un numero entre 0 y 1")
    }
  method valorDeAtaque() = filo * longitud
}

class ArmaContundente { //Mazas y martillos
  var peso 

  method valorDePoder() = peso
}