import destinos.*
object luke {
  var property lugaresVisitados= 0
  var property recuerdo = null
  var property vehiculo = alambiqueVeloz

  method realizarViaje(destino) {
    if(vehiculo.puedeViajar(destino)){
        vehiculo.viajar(destino)
        recuerdo = destino.souvenir()
        lugaresVisitados+=1
    }
  }
}

object alambiqueVeloz {
    var property estado = 100
    var property combustible = 100
    var property veloz = true

    method viajar(destino) {
        if(destino.permitidoViajar(self)){
            combustible=0.max(combustible-destino.distancia())
            estado = 0.max(estado - 1)
        }
    }

    method puedeViajar(destino) = destino.puedeViajar(self) and estado > 0 and combustible>0
}