
/*
atributos: energia, poder, habilidadEspecial, horasDeEntrenamiento,  salud

métodos: entrenar, 

*/

object selene {
   var energia=35
   var poder = 60 
   var luzLunar= false 
   var estaPotenciada = true // el enunciado habla claramente de este estado

   // getters para academia
   method poder() =poder 
   method energia() =energia 
   
   // nombre declarativo
   method alternarLuzLunar() {
    luzLunar = !luzLunar
   }
   method noEstaPotenciada(){
     estaPotenciada = not estaPotenciada
   } 

   method entrenar(){
      if (estaPotenciada) {
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

}