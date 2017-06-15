//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// los arrays son un tipo de colleccion ordenada, los arrays contienen elementos de un solo tipo

// Formas de inicializar un array

var vacio = Array<Int>()
var vacio1 = [Int]()
let THREEDOUBLES = Array<Double>(repeating: 0.1, count: 3)
let ANOTHERTHREEDUBLES = [Double](repeating: 2.5, count: 3)
var shoppingList: [String] = ["Eggs", "Milk"]

// Algunas propiedades de los arrays:


var mixDoubles = [Double]()
mixDoubles = ANOTHERTHREEDUBLES + THREEDOUBLES // puedes generar cadenas a partir de otras, pero todas deben de ser del mismo tipo.
mixDoubles.count // Contar el número de elementos del array
mixDoubles.isEmpty // Para conocer si el array se encuentra vacío o no
shoppingList.append("Flour") // Agrega un elemento al final del arreglo.
shoppingList += ["Baking Powder"] // Puedes agregar un nuevo elemento con la instruccion +=
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]// Puedes agregar los elementos que necesites.
var firstElement = shoppingList[0] // Puedes obtener cualquier elemento del array indicando la posicion del elemento que quieres obtener.
shoppingList[0] = "other" // Puedes cambiar cualquier elemento del array , solo debes indicar la posicion del elemento a cambiar y asignarle el nuevo valor.
vacio1
shoppingList[4...6] = [ "Bananas", "Apples"] // Puedes reemplazar uno o más elementos, indicando sus posiciones y asignando los nuevos valores.
shoppingList
shoppingList.insert("banana", at: 3)
shoppingList.remove(at: 3)
// Si vas a acceder a un elemento del arreglo mediante index debes asegurarte que el index ingresado de encuentre dentro del rango de numero de elementos del array porque se podria desencadenar un error.
shoppingList.removeLast() // para eliminar el último elemento.
shoppingList.removeFirst() // para eliminar el primer elemento.

// Para recorrer los elemetos de un array:
for item in shoppingList {
    print(item)
}
// Si necesitas obtener la posicion de cada elemto, puedes usar:s

for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}