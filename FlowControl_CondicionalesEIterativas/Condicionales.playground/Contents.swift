//: Playground - noun: a place where people can play

import UIKit


/*para el uso de random*/
import Darwin;

/*
    Conociendo los operadores AND y OR
    
    AND = &&
    OR  = ||
 
    Solamente sirven con valores booleanos, eso quiere decir:
 
    BooleanValueA && BooleanValueB
    BooleanValueA || BooleanValueB
*/

let AND: Bool = true && true;
let OR : Bool = true || false;


/*
  No funciona con:
 
  let testAnd = "x" || 2;
  let testAnd = 3 || 0;
 
  También se podría hacer un artificios como:
*/

/*Comparación entre números, la salida debe ser de tipo booleana si o si*/
let conditionInline : Bool =  (1 < -19) && (300 < 18);
let conditionInlineB: Bool =  (1 < 3 )  || (3 < 1);
let conditionInlineC: Bool =  (1 == -39) && (300 < 18);

/*Comparación de cadenas
 == Compara si tiene los mismos caractéres
 < Compara si una cadena viene en orden alfabético
*/
let pet = "cat";
let petCompare = (pet == "dog");

/*Útil tmb para el uso de unicodes*/
let coffee = "café";
let coffeeu = "cafe\u{0301}";
// :O
let isEqual = (coffee == coffeeu);

// el uso de la sentencia if
// solamente espera el resultado de un valor de tipo Bool
if (1 > 0) {
    print("condicionales!");
}

let animal: String = "Lion";
if (animal == "horse") || (animal == "donkey") {
    print("Animal is a farm pet.");
} else {
    print("Animal is a wild pet.");
}

let hourOfDay: Int = 1;
let timeOfDay: String;
if (hourOfDay < 6) {
    timeOfDay = "Early";
} else if (hourOfDay < 12) {
    timeOfDay = "Morning";
} else if (hourOfDay < 17) {
    timeOfDay = "Afternoon";
} else if (hourOfDay < 20) {
    timeOfDay = "Evening";
} else if (hourOfDay < 24) {
    timeOfDay = "Late evening";
} else {
    timeOfDay = "Invalid!";
}
print(timeOfDay);

/* la declaración de variables dentro de una condicional, dichas variables tiene alcance en ese contexto  */

var price: Float = 4500;
let IGV: Float = 18;
let subTotal: Float = price * (IGV / 100);
print("price * IGV", subTotal);
if subTotal < Float(1000.0) {
    let underThousand = price - subTotal;
    /*la constante declarada no es visible fuera del bloque if*/
    price = underThousand;
}
print(price);

/*operador condicional ternario*/
/*Existen 2 sintaxis muy similares para lograr ese tipo de condiciones*/

/*Aqui existe una excepción del comportamiento de uso de constantes
 ya que nacen con un valor*/
let randomNumberA: Int = Int(arc4random_uniform(10));
let randomNumberB: Int = Int(arc4random_uniform(10));

let min: Int;
let max: Int;

//la de mucho código:
/*
if randomNumberA < randomNumberB {
    min = randomNumberA;
} else {
    min = randomNumberB;
}
print(min);

if randomNumberA > randomNumberB {
    max = randomNumberA;
} else {
    max = randomNumberB;
}
print(max);
*/

//la segunda forma
min = (randomNumberA < randomNumberB) ? randomNumberA: randomNumberB;
max = (randomNumberA > randomNumberB) ? randomNumberA: randomNumberB;
print("min: \(min),max: \(max)");

/*
  Nota:
  Únicamente figura el uso de la clausula "where" en bucles y en el uso de switch/cases
  
  No sirve haciendo esto:
  if var a = 0, var b = 10, where (a < b) {
    print("a");
  };

  Fuente: http://ericasadun.com/2016/06/10/swift-where-oh-where-can-my-where-clause-be/
*/