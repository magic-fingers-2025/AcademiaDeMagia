
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