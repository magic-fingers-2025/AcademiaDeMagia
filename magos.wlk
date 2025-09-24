
/*
atributos: energia, poder, habilidadEspecial, horasDeEntrenamiento,  salud

métodos: entrenar, 

*/

object selene {
   var energia=35
   var poder = 60 
   var luzLunar= false  
   method habilidadActivada() =luzLunar // se agrega comentario
   method poder() =poder 
   method energia() =energia 
   method alternarHabilidad() {
    luzLunar = !luzLunar
} 
   method entrenar() {
    if (self.habilidadActivada()){
        poder =  poder *2
    }else{
       energia = energia + 25
    }     

     
   }
       
}


object balthazar  {
}

object iris {

   // energia y poder tienen un valor fijo
   const energia = 80
   const poder = 35
   // a diferencia de la capacidad de sanacion que inicia en 2.
   var capacidadDeSanacion = 2
   //pero cunado entrena
   
   method entrenar() {
   // cada vez que entrena su capcidad de sanacion aumenta en 1
      capacidadDeSanacion = capacidadDeSanacion + 1
   }

   method usarSanacion() {
      var resistenciaExtra
      var durabilidadExtra
      // cuando usa sanacion tiene 2 variables si es impar o no.
      if(capacidadDeSanacion % 2 == 1) {
      //si es impar tiene valores mas altos
         resistenciaExtra = 150
         durabilidadExtra = 100
         }
      else{
         resistenciaExtra = 80 * capacidadDeSanacion
         durabilidadExtra = 60 * capacidadDeSanacion
         //siendo que no es impar sus poderes disminuyen     
      }
   escudoMagicoDeArcana.mejorarResistencia(resistenciaExtra)
   escudoMagicoDeArcana.mejorarDurabilidad(durabilidadExtra)
   }
   
}
object escudoMagicoDeArcana {
   

   method mejorarResistencia(ResistenciaCambiada) {
   const resistencia = 400 + ResistenciaCambiada
   }
      
   method mejorarDurabilidad(DurabilidadCambiada) {
   var durabilidad = 600 + DurabilidadCambiada
      // su durabilidad no puede ser más que 1000
      if(durabilidad > 1000) {
         durabilidad = 1000
      }
   }
}


object aldric {

}