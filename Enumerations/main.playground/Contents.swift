//: Playground - noun: a place where people can play

import UIKit

/*
  Enumerations
  Son listas ennumeradas que nos facilitan el manejo de
  valores como constantes en la aplicación
*/

enum Month {
    case january
    case july
}

func holidays(for month: Month) -> String {
    switch month {
    case Month.january:
        return "Free"
    case Month.july:
        return "Indie day"
    }
}

var monthToQuery = Month.july
holidays(for: monthToQuery)

/*También se puede aplicar de forma abreviada el uso del
  switch de la siguiente manera:
 */
func holidays2(for month: Month) -> String {
    switch month {
    case .january:
        return "Free"
    case .july:
        return "Indie day"
    }
}
monthToQuery = Month.january
holidays(for: monthToQuery)
/*Como se visualiza, se usa el . para hacer referencia del contexto actual, siendo el enum Month*/

/*Adicionalmente, como el enum está en un contexto global,y la variable monthToQuery ya tiene establecido un valor de enum también puede funcionar reasignado un nuevo case del enum a la misma variable:*/
monthToQuery = .july
holidays(for: monthToQuery)

/*Otro ejemplo usando enums*/
enum Color {
    case red
    case blue
    case green
    case white
}
/*En este caso obviamos el case white, para ello necesitamos indicar que debe haber un por defaults en caso no se trabaje con todas las opciones del enum definido*/
func getColorValue(for color: Color) -> String{
    switch color{
    case .red:
        return "#ff0000"
    case .green:
        return "#00ff00"
    case .blue:
        return "#0000ff"
    default:
        return "#fff"
    }
}

var colorToQuery = Color.blue
getColorValue(for: colorToQuery)

colorToQuery = .green
getColorValue(for: colorToQuery)

/*Valores planos con Enum*/
/*En este caso tenemos un enumeration con valores por defecto*/
enum Flag: Int {
    case on = 1
    case off = -1
    case progress = 0
}

/*Para pintar los valores que contiene cada case usamos la propiedad rawValue
 de un case especifico*/
print(Flag.on.rawValue)

/*
  Creamos una función
*/
func getStatus(from flagType: Flag) -> Int {
    return flagType.rawValue;
}
getStatus(from: Flag.progress);
