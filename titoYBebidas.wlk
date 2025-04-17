object tito {
  var ultimaBebida = null
  var cantidadDosisConsumida = 0
  var estado = null
  const inerciaBase = 490
  
  method consumir(cantidad, bebida) {
    ultimaBebida = bebida
    cantidadDosisConsumida = cantidad
    estado = bebida.efecto()
    console.println("esta rica no?")
  }
  method velocidad() =  ultimaBebida.rendimiento(cantidadDosisConsumida) * inerciaBase / self.peso()
  method peso() = 70
  method ultimaBebida() = ultimaBebida
  method cantidadConsumida() = cantidadDosisConsumida
  method estadoActual() = estado
}

object whisky {
  method rendimiento(dosis) = 0.9 ** dosis
  method efecto() = "sueño, mareo y jaquecas"
}
object terere {
  method rendimiento(dosis) = (0.1 * dosis).max(1)
  method efecto() = "diurético, laxante y estimulante"
}
object cianuro {
  method rendimiento(dosis) = 0 * dosis
  method efecto() = "moribundo,lleno de abulias y de marasmo"
}