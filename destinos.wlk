object paris{
    method souvenir() = llavero
    method distancia() = 10
    method permitidoViajar(vehiculo) = vehiculo.combustible()>=self.distancia()
}

object buenosAires{
    method souvenir() = mate(presidente)
    var property presidente = 1
    method distancia() = 5
    method permitidoViajar(vehiculo) = vehiculo.veloz()
}

object bagdad {
    method souvenir() = if(ano == 1){bidon}else if(ano == 2){armas}else if(ano==3){replicaJardin}else{otro}
    var property ano = 1
    method permitidoViajar(vehiculo) = true
    method distancia() = 2
}

object lasVegas{
    method souvenir() = homenaje.souvenir()
    var property homenaje = paris
    method permitidoViajar(vehiculo) = homenaje.permitidoViajar(vehiculo)
    method distancia() = 8
}
object llavero {}

object mate {
    method yerba(presidente) = if(presidente==1){true}else{false}
}

object bidon{}

object armas {}

object replicaJardin{}

object otro{}

