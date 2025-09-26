/*
métodos: reclutar, poderTotal, deltaEnergia, ...

*/

import magos.*
object academia {
  const equipoDeMagos = []
  const listaDeCandidatos = []
  
  // necesito los getters para consultar en los test
  method equipoDeMagos() {
    return equipoDeMagos    
  }
  method listaDeCandidatos() {
    return listaDeCandidatos
  }
  
  
  method reclutar(unMago){
    if (unMago.energia()>40 and unMago.poder()>= 30){
      self.adicionarAlEquipo(unMago)
    }
    else{
      listaDeCandidatos.add(unMago)
    }
  }

  method adicionarAlEquipo(unMago){
    if (listaDeCandidatos.contains(unMago)){
      listaDeCandidatos.remove(unMago)
      equipoDeMagos.add(unMago)
    }
    else{
      equipoDeMagos.add(unMago)
    }
  }
  // Entrenar un mago
  method entrenarMagoDeEquipo(unMago){
    if (equipoDeMagos.contains(unMago)){
      unMago.entrenar()
    }
    else{
      return "Sólo se puede entrenar un mago del equipo"
    }
    
  }

  // También agregamos la posibilidad de entrenar a todos AL MISMO TIEMPO
  method entrenarEquipo() {
    equipoDeMagos.forEach({ m => m.entrenar()})
  }
  method poderTotalDelEquipo(){
    return equipoDeMagos.sum({m => m.poder()})
  }
  method elEquipoEstaOptimo(){
    return not equipoDeMagos.any({m => m.energia() < 45})
  }
  method deltaEnergia(){
    return (self.equipoDeMagos().max({m => m.poder()}) - self.equipoDeMagos().min({m => m.poder()})).abs()
    
  }

  method listaDePoderes(){
    return equipoDeMagos.filter({m => m.energia()>90}).map({m => m.poder()})

  }
}
