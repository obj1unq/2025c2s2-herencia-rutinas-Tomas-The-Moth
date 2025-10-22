import gimnasia.*

class Personas{
    var peso = 0 
    method tiempoQueEjercita(){
        return
    }

    method pesoBajado(rutina){
    return rutina.caloriasQuemadas(self.tiempoQueEjercita())/ self.kilosPorCaloriaQuePierde()
    }

    method puedeHacerRutina(){
    }
   
   method kilosPorCaloriaQuePierde(){return }
}

class PersonasSedentarias inherits Personas{
override method kilosPorCaloriaQuePierde(){ return 7000
}
override method puedeHacerRutina(){return peso > 50}
}





