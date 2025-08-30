object tom {
    var energia = 50

    method comer(unRaton){
        energia = (energia + 12 + unRaton.peso()).min(100) //Indica que solo aceptara como maximo un valor "100".
        unRaton.serComido()
    }

    method correr(unaDistancia){
        energia = (energia - unaDistancia / 2).max(0) //Indica que solo aceptara como minimo un valor "0", 
                                                      //evitamos el ingreso de numeros negativos y que el programa devuelva error.
    }

    method velocidadMaxima(){
       return 5 + energia / 10 
    }

    method energia(){
        return energia
    }


    method puedeCazar(unaDistancia){
        return energia >= unaDistancia / 2
    }

    method cazar(unRaton,unaDistancia){
        if (self.puedeCazar(unaDistancia)){
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }

}

object jerry {
  var peso = edad * 20
  var edad = 2

  method peso(){
    return peso
  }

  method edad(){
    return edad
  }

  method cumpleAnios(){
    edad = edad + 1
  }

  method serComido(){

  }
  

}

object nibbles {
  
    method edad(){
        return 35
    }

}


object bizcocho{


var estaSeco = true

method peso(){
    if(estaSeco()){
        return 20
    }
    else {
        return 30
    }
}

method serComido(){
    estaSeco = false
}
}



