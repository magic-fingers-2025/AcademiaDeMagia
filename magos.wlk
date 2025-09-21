
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
   var capacidadSanacion = 2
   //pero cunado entrena
   
   method entrenar() {
   // cada vez que entrena su capcidad de sanacion aumenta en 1
      capacidadSanacion = capacidadSanacion + 1
   }

   method usarSanacion() {
      // cuando usa sanacion tiene 2 variables si es impar o no.
      if(capacidadSanacion % 2 == 1) {
      //si es impar tiene valores mas altos
         escudoMagicoDeArcana.mejorar(150, 100)
         }
      else 
          escudoMagicoDeArcana.mejorar(80 * capacidadSanacion, 60 * capacidadSanacion)
    
      //siendo que no es impar sus poderes disminuyen
   }
   
}
object escudoMagicoDeArcana {
   //estos son los valores basicos del escudo arcano
   var resistencia = 400
   var durabilidad = 600
      
   method mejorar(resistenciaExtra, durabilidadExtra) {
   //toma los valores iniciales y suma los que agregamos por usar sanacion
      resistencia = resistencia + resistenciaExtra
      durabilidad = durabilidad + durabilidadExtra
      // su durabilidad no puese ser mas que 1000
      if(durabilidad > 1000) {
         durabilidad = 1000
      }
   }
}

object aldric {

}