//: Tarea - Un velocímetro de un automóvil digital

import UIKit

// Velocidades: 4 estados
// Apagado, VelocidadBaja, VelocidadMedia, VelocidadAlta

enum Velocidades : Int {
    
    case Apagado = 0,
         VelocidadBaja = 20,
         VelocidadMedia = 50,
         VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

var velocidadActual : Int = 0
var velodicadAnterior : Int = 0
var velocidadNombre : String = "velocidad"

class Auto {
    
    //Instancia de Velocidades
    var velocidad : Velocidades
    
    init(){
        //Inicializador clase 'Auto', se define valor inicial 'Velocidades.Apagado'
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena: String) {
    
        if(velocidad.rawValue == 0 ){
            velocidadActual = velocidad.rawValue
            velocidadNombre = "Apagado"
            
            //Guarda el valor actual como Anterior
            velodicadAnterior = velocidadActual
            
            //Se asigna siguiente valor
            velocidad = Velocidades.VelocidadBaja
        } else
        
        if(velodicadAnterior == 0 && velocidad.rawValue == 20){
            velocidadActual = velocidad.rawValue
            velocidadNombre = "Velocidad Baja"
            
            //Guarda el valor actual como Anterior
            velodicadAnterior = velocidadActual
            
            //Se asigna siguiente valor
            velocidad = Velocidades.VelocidadMedia
        } else
        
        if(velodicadAnterior == 20 && velocidad.rawValue == 50){
            velocidadActual = velocidad.rawValue
            velocidadNombre = "Velocidad Media"
            
            //Guarda el valor actual como Anterior
            velodicadAnterior = velocidadActual
            
            //Se asigna siguiente valor
            velocidad = Velocidades.VelocidadAlta
        } else
        
        if(velodicadAnterior == 50 && velocidad.rawValue == 120){
            velocidadActual = velocidad.rawValue
            velocidadNombre = "Velocidad Alta"
            
            //Guarda el valor actual como Anterior
            velodicadAnterior = velocidadActual
            
            //Se asigna siguiente valor
            velocidad = Velocidades.VelocidadMedia
        } else
        
        if(velodicadAnterior == 120 && velocidad.rawValue == 50){
            velocidadActual = velocidad.rawValue
            velocidadNombre = "Velocidad Media"
            
            //Guarda el valor actual como Anterior
            velodicadAnterior = velocidadActual
            
            //Se asigna siguiente valor
            velocidad = Velocidades.VelocidadBaja
        } else
            
            if(velodicadAnterior == 50 && velocidad.rawValue == 20){
                velocidadActual = velocidad.rawValue
                velocidadNombre = "Velocidad Baja"
                
                //Guarda el valor actual como Anterior
                velodicadAnterior = velocidadActual
                
                //Se asigna siguiente valor
                velocidad = Velocidades.Apagado
        } else
                
            if(velodicadAnterior == 20 && velocidad.rawValue == 0){
                velocidadActual = velocidad.rawValue
                velocidadNombre = "Apagado"
                
                //Guarda el valor actual como Anterior
                velodicadAnterior = velocidadActual
                
                //Se asigna siguiente valor
                velocidad = Velocidades.VelocidadBaja
        }
        
        return (velocidadActual, velocidadNombre)

    }
    
}


var auto = Auto()

for( var i = 0; i < 20; i++){
    var p = i + 1
    print( "\(p).\t\(auto.cambioDeVelocidad())")
    
}

