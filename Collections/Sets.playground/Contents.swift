//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Sets

// los Sets almacenan diferentes valores de diferentes tipos y no tienen un orden.... se usan mayormente en trabajos con conjuntos.
// Formas de declarar Sets
var letters = Set<Character>()
letters.insert("H")
letters
letters = [] // Una forma de eliminar los valores de un Set
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] // Explicita
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"] // Implicita

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

// Propiedades, Funcionalidades de los Sets

letters.insert("a") // Puedes insertar nuevos elementos, pero al ser un arreglo desordenado no puedes indicarle el lugar en el que quieres insertar tu nuevo elemento.
favoriteGenres.count // Devuelve el número de elementos del arreglo.
favoriteGenres.removeFirst() // elimina el primer valor.
favoriteGenres.remove("Rock")// elimina el elemento, se tiene que indicar el valor del elemento no la posición, que se le indica
favoriteGenres.contains("Rock") // Consultar si contiene un elementi¡o , retorna un boleano.
for genre in favoriteGenres1 { // Para recorrer
    print("\(genre)")
}

for genre in favoriteGenres1.sorted() {
    print("\(genre)")
}

oddDigits.union(evenDigits).sorted() // Une todos los elementos de ambos Sets.

oddDigits.intersection(evenDigits).sorted() // Devuelve todos los elementos que tienen en común ambos Sets

oddDigits.subtracting(singleDigitPrimeNumbers).sorted() // Resta los elementos que tienen en comun el 1er Set con el 2do.

oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted() // Devuelve los elementos que no tienen en común ambos Sets.

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals) // indica si el primer conjunto está contenido en el 2do conjunto
// true
farmAnimals.isSuperset(of: houseAnimals) // indica si el primer conjunto contiene el 2do conjunto
// true
farmAnimals.isDisjoint(with: cityAnimals) // indica si los conjuntos no tienen elementos en común.
// true






