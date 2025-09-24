
/*
atributos: energia, poder, habilidadEspecial, horasDeEntrenamiento,  salud

métodos: entrenar, 

*/

object selene {
   var energia=35
   var poder = 60 
   var luzLunarActivada = false  
  
   method poder() =poder 
   method energia() =energia 
   method activarLuzLunar() {
    luzLunarActivada = true
   }
   method entrenar() {
    if (luzLunarActivada){
        poder =  poder *2
    }else{
       energia +=  25
    }     

     }
       
}


object balthazar  {
}

object iris {
}


object aldric {

}