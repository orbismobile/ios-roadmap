//: Playground - noun: a place where people can play

import UIKit

//Caracteres

let a:Character = "a"

for character in "Dog!🐶".characters {
print(character)
}



//Strings

let string:String = "Hola Mundo"
let stringVacio = ""
let stringVacio2 = String()

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)

let exclamationMark: Character = "\u{5ed}"
var saludo = "Hola Mundo"
saludo.append(exclamationMark)

let multiplo = 3
print("\(multiplo) veces 2.5 es \(Double(multiplo) * 2.5)")

print("\"Hola\"")
saludo.characters.count

let quotation = "We're a LOT alike, you and I."
let minu = quotation.lowercased()
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

quotation.isEmpty
//quotation.dropFirst() en swift 4 , elimina el primer caracter

//Substing
let galaxy = "Milky Way 🐮"
let endIndex = galaxy.index(galaxy.startIndex, offsetBy: 3)
var milkSubstring = galaxy[galaxy.startIndex...endIndex]
let star = "⭐️"

// Multi-line en swift 4
//let introString = """ A long time ago in a galaxy far, far away....You could write multilined strings without "escaping" single quotes. The indentation of the closing quotes below deside where the text line begins. You can even dynamically add values from properties: \(star) """



