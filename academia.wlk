/*
métodos: reclutar, poderTotal, deltaEnergia, ...

*/

import magos.*
object academia {
  var equipo = []
  var candidatos = []
  //verificar que su energía mágica sea mayor a 40 y su poder igual o superior a 30.
  method cumpleConRequisitos(unMago) = self.cumpleConEnergiaApropiada(
    unMago
  ) && self.cumpleConPoderApropiado(unMago)
  
  // Reclutar un mago (si cumple entra al equipo, si no a candidatos)
  method reclutar(unMago) {
    if (self.cumpleConRequisitos(unMago)) equipo.add(unMago)
    else candidatos.add(unMago)
  }
  
  // Re-evaluar candidatos: los que cumplen pasan al equipo
  method reevaluarCandidatos() {
    var nuevosMiembros = []
    nuevosMiembros = candidatos.filter({ c => self.cumpleConRequisitos(c)})
    
    nuevosMiembros.forEach({ c => equipo.add(c)})
    
    nuevosMiembros.forEach({ c => candidatos.remove(c)})
  }
  
  method cumpleConEnergiaApropiada(unMago) = unMago.energia() > 40
  
  method cumpleConPoderApropiado(unMago) = unMago.poder() >= 30
  
  // Entrenar a todos los del equipo
  method entrenarEquipo() {
    equipo.forEach({ m => m.entrenar()})
  }
  
  // Poder total del equipo
  method poderTotal() = equipo.sum({ m => m.poder()})
  
  // ¿Condiciones óptimas? (nadie con energía < 45)
  method condicionesOptimas() = equipo.all({ m => m.energia() >= 45})
  
  // Delta de energía (máxima - mínima, en valor absoluto)
  method deltaEnergia() {
    var magoConMaximaEnergia = equipo.max({ m => m.energia()})
    var magoConMinimaEnergia = equipo.min({ m => m.energia()})
    return (magoConMaximaEnergia.energia() - magoConMinimaEnergia.energia()).abs()
  }
  
  // Lista de poderes de magos con energía > 90
  method poderesDeMagosConAltaEnergia() {
    var magosConMasDe90DeEnergia = equipo.filter({ m => m.energia() > 90 })
    return magosConMasDe90DeEnergia.map({ m => m.poder()})
  }
}
