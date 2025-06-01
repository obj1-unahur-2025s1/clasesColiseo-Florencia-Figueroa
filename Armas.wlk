//ARMAS
//Espadas, dagas o hachas
class ArmaDeFilo { 
    var property filo      
    var longitud
    method valorDeAtaque() = filo * longitud
    method initialize() = if(not filo.between(0, 1)){
                          self.error("El valor del filo no es valido, insertar un numero entre 0 y 1")}
}

//Mazas y martillos
class ArmaContundente { 
    var peso 
    method valorDeAtaque() = peso
}


//ESCUDOS
object casco {
    method puntos(unLuchador) = 10
}

object escudo {
    method puntos(unLuchador) = 5 + (unLuchador.destreza() / 10) //chequeatar cuenta
}
