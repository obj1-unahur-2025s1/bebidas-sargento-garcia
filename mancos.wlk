object nahuel {
  var estado = "ansioso por jugar con los hunos"
  var esManco = true
  var habilidad = 75

  method estado() = estado
  method habilidad() = habilidad
  method activarTrucos() {
    habilidad = habilidad + 80
    esManco = false
  } 
  method jugarAlAGE(otroManco) {
    if(otroManco.habilidad() > self.habilidad()){
      estado = "soy manco, el pela me distrae con los partidos de la nacional C"
      habilidad = habilidad - 30
    }
    else{
      estado = "gané porque miro partidos de yupanqui"
    }
  }
  method esManco() = esManco
  
}

object brayan {
  var estado = "cagado en las patas"
  var esManco = true
  var habilidad = 77

  method estado() = estado
  method habilidad() = habilidad
  method activarTrucos() {
    habilidad = habilidad + 60
    esManco = true // siempre va a ser manco
  } 
  method jugarAlAGE(otroManco) {
    if(otroManco.habilidad() > self.habilidad()){
      estado = "soy un manquito cola facil, nahuel se la come igual"
      habilidad = habilidad - 30
    }
    else{
      estado = "gano sin mirar tutoriales por yutú"
    }
  }
  method esManco() = esManco
  
}