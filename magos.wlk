object selene {
}


object balthazar {
  var horas = 450
  var hechizosDaninos = 0
  
  method energiaMagica() = horas / 10
  
  method poderMagico() = (35 - hechizosDaninos) * 3
  
  method entrenar() {
    horas += 100
    hechizosDaninos += 1
  }
}

object iris {
  
}

object aldric {
  
}