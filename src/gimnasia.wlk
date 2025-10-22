class ABC {}

class Rutinas {
    method intensidad(){
     return 
    }
    
    method tiempo(){
        return 0
    }

    method caloriasQuemadas(tiempo){
     return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }

    method descanso(tiempo){
    return 0
    }
    }
// tipos de rutinas
class Running inherits Rutinas{

 override method descanso(tiempo){
    return if (tiempo > 20){
        5
    }
    else {
        2
    }
 }

   var property intensidadDeCaminata = 0
override method intensidad() { return intensidadDeCaminata}
}


class Remo inherits Rutinas {
    override method intensidad() {
        return 1.3
    }

    override method descanso(tiempo){
      return  tiempo/5
    }

}




// tipos de runnin

class Maraton inherits Running {
    override method caloriasQuemadas(tiempo){  return super(tiempo)*2  }
}

// tipo de maraton para ejmplo

object maratonDeBA inherits Maraton{
override method intensidad(){return 1.5} 
}


//actividad de remo para ejemplo
object remarEnElDelta inherits Remo {
}




//tipos de remo 
class RemoDeCompetición inherits Remo{
    override method intensidad (){
        return 1.7
    }
    override method descanso(tiempo){
     return (super(tiempo)-3).max(2)}
    }



// ejemplo de remo de ecompetición

object remarEnElCaminoDeLosRemeros inherits RemoDeCompetición{
}


