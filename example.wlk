object tito {
  var ultimaBebida = null
  var cantidadConsumida = 0
  var estado = null
  const inerciaBase = 490
  
  method consumir(cantidad, bebida) {
    ultimaBebida = bebida
    cantidadConsumida = cantidad
    estado = bebida.efecto()
  }
  method velocidad() =  ultimaBebida.rendimiento(self) * inerciaBase / self.peso()
  method peso() = 70
  method ultimaBebida() = ultimaBebida
  method cantidadConsumida() = cantidadConsumida
  method estadoActual() = estado
}

object whisky {
  method rendimiento(tito) = 0.9 ** tito.cantidadConsumida()
  method efecto() = "sueño, mareo y jaquecas"
}
object terere {
  method rendimiento(tito) = (0.1 * tito.cantidadConsumida()).max(1)
  method efecto() = "diurético, laxante y estimulante"
}
object cianuro {
  method rendimiento(tito) = 0 //* tito.cantidadConsumida()
  method efecto() = "moribundo,lleno de abulias y de marasmo"
}