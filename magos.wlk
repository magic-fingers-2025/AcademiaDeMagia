
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

  // energia y poder tienen un valor fijo
  const energia = 80
  const poder = 35
  // se inicio capacidadDeSanacion en 1 porque si inicia en 2 no se puede testear con lo que piden
  var capacidadDeSanacion = 1
  //pero cunado entrena
   
  method entrenar() {
   // cada vez que entrena su capcidad de sanacion aumenta en 1
    capacidadDeSanacion += 1
  }

  method getCapacidadDeSanacion() {
      return capacidadDeSanacion
  }


   method usarSanacion() {
      
      // cuando usa sanacion tiene 2 variables si es impar o no.
      if((capacidadDeSanacion).odd()) {
      //si es impar tiene valores mas altos
        escudoMagicoDeArcana.mejorarResistencia(150)
        escudoMagicoDeArcana.mejorarDurabilidad(100)
         }
      else{
        escudoMagicoDeArcana.mejorarResistencia(80)
        escudoMagicoDeArcana.mejorarDurabilidad(60)
         //siendo que no es impar sus poderes disminuyen     
      }
  
  }
   
}
object escudoMagicoDeArcana {
  var resistencia = 400
  var durabilidad = 600

  method mejorarResistencia(resistenciaCambiada) {
  resistencia += resistenciaCambiada
  }
      
  method mejorarDurabilidad(durabilidadCambiada) {
  durabilidad += durabilidadCambiada.min(400)
    // su durabilidad no puede ser más que 1000
  }
  method getmejoraResistencia() = resistencia
  method getmejoraDurabilidad() = durabilidad 
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