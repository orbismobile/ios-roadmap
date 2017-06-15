//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Dictionaries

// Un diccionaio almacena datos de tipo : LLava - valor con un orden no definido.
// Tipografía de un diccionario
// Dictionary<Key, Value>

var namesOfIntegers = [Int: String]() // Forma de declarar un diccionario con una llave del tipo Int y un valor tipo String


var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

// Métodoss y propiedades de los diccionarios

airports.count // Devuelve el número de elementos que contiene el diccionaio
airports.isEmpty // Devuelve un valor boleano, true si el diccionario se encuentra vacío o false si contiene elementos.

namesOfIntegers[16] = "sixteen" // para agregar un elento al diccionario mediante un corchete se indica el valor de la llave y luego se le asigna el valor.

airports["LHR"] = "London Heathrow" // Puedes cambiar el contenido del elemento, mediante su llava asignadsa.
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") { // Permite actualizar el valor accediendo mediante su llava.
print("The old value for DUB was \(oldValue).")
}

airports["APL"] = "Apple International"
airports["APL"] = nil // Una de las formas de eliminar un elemento
airports

if let removedValue = airports.removeValue(forKey: "DUB") { // otra forma de eliminar un elemento es accediendo sl midmo mediante u llave.
print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports { // Recorrer un diccionario
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys { // acceder mediante código
    print("Airport code: \(airportCode)")
}

for aiportKey in airports.values {

    print("Airport name: \(aiportKey)")
}


