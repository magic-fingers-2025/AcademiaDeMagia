
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
  var horas = 450
  var hechizosDaninos = 0

  method energia() = horas / 10
  method poder() = (35 - hechizosDaninos) * 3

  method entrenar() {
    horas += 100
    hechizosDaninos += 1
  }

}

object iris {
}


object aldric {

}