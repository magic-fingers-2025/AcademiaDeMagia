
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
}


object aldric {

}