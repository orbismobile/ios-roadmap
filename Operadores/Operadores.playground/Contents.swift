//: Playground - noun: a place where people can play

import UIKit


//Operador =

//let diccionario : [String:Int]
//let (x,y):(Int)
let (x, y) = (1, 2)
let x2 = 1
let y2 = 2
if x2 == y2 {
    print("Son iguales")
}

// Operador +

var i = 1 + 2
print("hello, " + "world")

i += 3


// Operador % , devuelve el resto

let resto = 9 % 4

// Operador +=

var a = 1
a += 2
var b = 3

// Operadores de comparación que devuelven valor bolleano

if (a == b) {} // a es igual a b?
if a != b {} // a es diferente de b?
if a > b {} // a es mayor que b?
if a < b {}// a es menos que b?
if a >= b{} // a es mayor igual que b?
if a <= b {} // b es menor igual que b?

(1, "zebra") < (2, "apple") // Se pueden comparar tuplas con operadores comparativos < o > siempre y cuando sus elementos no sean valores boleanos

(true, "zebra") == (true, "apple") // Se puede comparar tuplas que contengan valores boleanos solamente con el operador comparativo ==

// combinacion de 3 operadores
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// (hasHeader ? 50 : 20), compara si hasHeader es verdadero, devuelvo 50 y si es falso devuelve 20

// en otras palabras:
let rowHeight1: Int
if hasHeader {
    rowHeight1 = contentHeight + 50
} else {
    rowHeight1 = contentHeight + 20
}

// Operadores con rangos

// con rango cerrado
for index in 1...5 {
    print("\(index) valor 5 es \(index * 5)")
}
// con rango condicionado

let names = ["Anna", "Alex", "Brian", "Jack"]
for i in 0..<names.count {
    print("Persona \(i + 1) es llamada \(names[i])")
}

// Operadores lógicos

// Operador !

let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENEGADO")
}

// Operador &&

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENEGADO")
}

// Operador ||

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("BIENVENIDO")
} else {
    print("ACCESO DENEGADO")
}

var welcome = "hello"
//welcome[welcome.endIndex]
welcome.insert("!", at: welcome.endIndex)

