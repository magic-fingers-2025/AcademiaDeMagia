
/*
atributos: energia, poder, habilidadEspecial, horasDeEntrenamiento,  salud

métodos: entrenar, 

*/

object selene {
   // Atención: el enunciado está pobremente escrito según las reglas del idioma castellano (sujeto-predicado). Cuando dice "Cuando entrena sin estar potenciada", el sujeto tácito es Luz Lunar y no selene. Aunque así sea, que se potencie Luz Lunar, es idependiente o no de que Luz Lunar esté activada?

   // Debajo resolución ASUMIENDO QUE SI SE ACTIVA LUZ LUNAR, TAMBIÉN SE POTENCIA.
   
   var energia=35
   var poder = 60 
   var luzLunarActivada = false 
   

   // getters para academia
   method poder() = poder 
   method energia() = energia 
   
   // nombre declarativo
   method activarLuzLunar() {
    luzLunarActivada = true
   }

   
   
   method entrenar(){
      if (luzLunarActivada) {
         poder = 2*poder
      }
      else {
         energia+= 25
      }
   }
       
}


object balthazar  {
}

object iris {
}


object aldric {
  var baston = bastonDeHielo
  var cantidadDeEntrenamientos = 0
  var habilidadConBastones = 30
  method energia(){
    return 65 + 20*cantidadDeEntrenamientos
  }

  // setter para cambiar de bastón
  method usarBaston(unBaston){
    baston = unBaston
  }

  method poder(){
    return habilidadConBastones/2
  }

  method entrenar(){
    // delegamos responsabilidad. Evitamos un if estructurada style.
    habilidadConBastones+= baston.otorgarHabilidad()
    cantidadDeEntrenamientos+=1
  }


}


object bastonDeFuego{
  method otorgarHabilidad(){
    return 60
  }
}

object bastonDeHielo{
  method otorgarHabilidad(){
    return 40
  }
}