//: Playground - noun: a place where people can play

import UIKit


// Enteros:
let _: Int = 34
_ = 46
let numero1 = 67
let minValue = UInt64.min
let maxValue = UInt64.max
let numero:UInt32 = 12 // Se usa cuando sabes específicamente para que plataforma utilizarás la variable : 32 0 64 bits, solamente acepta positivos.
let cadena = "1000"
let result = Int(cadena)! * 3

// Doubles
// Double Representa variables de 64 bits y float de 32 bits, double tiene precision de almenos 15 decimales y float 6 decimales, cuando no se elige el tipo de variable flotante, swift elige por default double.
let anotherPi = 3 + 0.14159 // lo configura como double
let doble:Double = 3
let doble2:Double = 2.345

let bollean : Bool = true
Int(NSNumber(value:bollean))
Int(true)

var cadean2 = String(1000)
