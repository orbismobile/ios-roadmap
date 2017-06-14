//: Playground - noun: a place where people can play

import UIKit

/*
  Funciones:
 
  Se declara con la palabra reservada func
*/
func printHi(){
    print("Hello, welcome to functions")
}
printHi()

/*
  Usando funciones pasando parámetros
*/
func printMod2OfNumber(value: Int){
    print("\(value) % 2 = \(value % 2)")
}
printMod2OfNumber(value: 39)

/*
   NOTA: No confundir el término "parámetro" y "argumento", cuando usas funciones
   Parámetros: Una función declara sus parámetros en la lista de parámetros.
   Argumentos: Cuando tu llamas una función, provees valores como argumentos para los parámetros de la función.
 */

/*Definiendo varios parámetros*/
func printDivisibleOf(divisor: Int, andValue: Int){
    print("\(divisor) / \(andValue) = \(divisor / andValue)")
}

/*Ingresando los argumentos correspondientes*/
printDivisibleOf(divisor: 4, andValue: 2)

/*Renombramos un parámetro por legibilidad*/
func printDivisibleOfv2(divisor: Int, and: Int){
    print("\(divisor) / \(and) = \(divisor / and)")
}
/*Ingresando los argumentos correspondientes*/
printDivisibleOfv2(divisor: 4, and: 2)

/*Usando el truco del _ generamos de que el parámetro aún tenga su referencia, 
  PERO cuando ejecutámos la funcion es diferente*/
func printDivisibleOfv3(_ divisor: Int, and: Int){
    print("\(divisor) / \(and) = \(divisor / and)")
}
/*Ya no se tendría que nombrar el argumento*/
printDivisibleOfv3(4, and: 2)

/*Agregando una funcionalidad adicional, aplicamos un alias de parámetros,
  En este caso creamos un alias llamado "and" para el parámetro "value"*/
func printDivisibleOfv4(_ divisor: Int, and value: Int){
    print("\(divisor) / \(value) = \(divisor / value)")
}
/*Eso quiere decir que cuando pase un valor como argumento "and"
  Internamente, la función lo considerará como "value" */
printDivisibleOfv4(4, and: 2)

/*
  Inclusive, puedes definir parámetros con valores por defecto,
  En este caso, value tiene como valor por defecto 1
*/
func printDivisibleOfv5(_ divisor: Int, _ value: Int = 1){
    print("\(divisor) / \(value) = \(divisor / value)")
}
printDivisibleOfv5(4);

/*
   Funciones con retorno de valores.
 */

/*
   Agregando el -> Int, indicamos que esta función debe retornar un valor de ese tipo de dato
*/
func printDivisibleOfv6(_ divisor: Int, by value: Int = 1) -> Int {
    return divisor / value
}
let result = printDivisibleOfv6(4, by: 2)

/*
   También visualizamos que si podemos retornar una tupla de valores
*/
func divisibleAndMultiplier(_ number: Int, by factor: Int = 1)
    -> (product: Int, quotient: Int) {
        return ( number * factor , number / factor)
}
let results = divisibleAndMultiplier(8, by: 1)
let product = results.product
let quotient = results.quotient

/*
   Avanzado manejo de parámetros
   Por defecto los parámetros son inmutables.
 
   Mostraría error al interpretar la función:
 
   func decrementAndPrint(_ value: Int){
       value += 1
   }
*/

/*
  pass-by-value: Es un término que se usa para indicar que swift copia los valores antes de pasar
  estos a una función, es este un comportamiento por defecto, también, se podría decir que genera
  que cada parámetro tenga una declaración con "let"
 
  copy-in, copy-out o "call by value result" son los términos que se usan para poder cambiar el
  comportamiento de un parámetro de una función como si fuera una variable, ejemplo:
*/
func decrementAndPrint(_ value: inout Int){
    value -= 1
    print(value)
}
var valueToDecrement = 20
decrementAndPrint(&valueToDecrement)
print(":o \(valueToDecrement)")

/*
  El keyword "inout" indica que el parámetro debe ser copiado, esta copia local es usada junto con la función,
  y luego lo copia de nuevo cuando retorna la función.
 
  Otro punto importante que al usar la función y al tener este tipo de parámetro, debe ingresarse un valor con el
  ampersand (&), como el ejemplo: decrementAndPrint(&valueToDecrement)
  
  Jamas se debe aplicar esto ya que genera un error de sintaxis:
   decrementAndPrint(&20)
   decrementAndPrint2(&":D")
 
  Es también conocido como pasar valores por referencia, o como el término pass-by-reference, el valor del argumento
  no es copiado en el parámetro. En su lugar, el parámetro sólo sostiene una referencia a la memoría del valor original.
  La optimizacion satisface todo los requerimientos de copy-in copy-out mientras remueve necesita hacer copias.
*/

/*
  Sobrecarga (overloading)
 
  Se refiere a la declaración de funciones con el mismo nombre pero con distinta cantidad de parámetros o
  distinto retorno de tipo de dato.
*/
func getValue() -> Int {
    return 31
}

func getValue() -> String {
    return "Jhon Doe"
}

/*
  El detalle con el uso de sobrecarga, es que es un poco complicado al ejecutarlo,
  ya que es necesario asignar a variables o constantes que tengan el mismo tipo de dato.
  Ejemplo:
 
  La siguiente sentencia: 
  var value = getValue()
  Mostraría un error de ambigüedad ya que existen varias funciones con ese mismo nombre,
  y la inferencia del lenguaje se pierde por ello.
*/
let valueInt: Int = getValue()
let valueString: String = getValue()

/*Funciones como variables*/
/* 
  Las funciones en swift son otro tipo de dato, se puede asignarlas a
  variables y constantes con un tipo de dato de valor de retorno, sea un Int o un String.
  Entonces...
*/
func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}

var myFn = add
myFn(20, 30)

func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}
myFn = substract
myFn(30, 20)

/*Funciones como parámetros*/
/*
  Como se vé en el anterior bloque, las funciones pueden asignarse a una variable
  Eso quiere decir que también se puede pasar como parámetros :)
  Ejemplo:
  La función printResult recibe como 1er parámetro una función que recibe 2 parámetros y retorna un valor entero.
  El 2do parámetro es Int al igual que el 3ero.
*/
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a, b)
    print(result)
}

/*
  usamos la variable "myFn",
  como se vé tiene un tipo de dato que genera la función "substract" 
*/
printResult(myFn, 4, 3)

/*
  El extraño mundo de las funciones que retorna un valor de tipo Never
  El crear funciones que retornen un tipo de dato Never, es confuso, ya que estas
  por nada del mundo retornarán algo.
  Es el único tipo de función que maneja con los bucles de evento o eventLoops.
  Un eventLoop es el corazón de un app moderno, y son visibles al crear apps para ios o mac apps, como en UIApplicationMain o NSApplicationMain.
 */

/*Al declarar solo:
 func neverReturn() -> Never {
 }
 Saldría error ya que es necesario definir lo que debe tener dentro algo que jamás retorne, gracias a ello el compilador no hace mucho esfuerzo al pasar por este tipo de funciones ya que con este tipo de funciones puede crashear al ser considerado como bucles infinitos que jamás finalizarán
 */
func neverReturn() -> Never {
    while true{
        
    }
}

