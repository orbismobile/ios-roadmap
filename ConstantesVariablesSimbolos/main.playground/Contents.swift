//: Playground - noun: a place where people can play

import UIKit

/*
  CONSTANTES -> let
  Son declaraciones que no permiten cambiar de valor, solamente 
  almacenan un valor único al ejecutarse la aplicación
*/

let IDIOMA: String           = "Inglés";
let MONEDA_SUFIJO: Character = "$";
let NETWORK_STATUS: Int      = 200;
let VERSION: Double          = 2.01;
let PI: Float                = Float.pi;
let Radians45: Float         = 45 * PI / 180;

/*
  VARIABLES -> var
  Son declaraciones que permiten actualizar los valores 
  establecidos durante la aplicación.
*/

var edad: Int = 10;
edad = 20;

var name: String = "Foo";
name = "Jhon";

var especial: Character = "@";
especial = "€";

var idioma: String = "Chino";
idioma = "Español";

var status: Int = 300;
status = 0;

var angleDouble: Double = 45 * Double.pi / 180;
angleDouble = -45 * Double.pi / 180;

var angle: Float = 45 * PI / 180;
angle = -45 * PI / 180;

let isOrNot: Bool = true;
var releaseFailed: Bool = false;
releaseFailed = true;

// with ternary conditional
let doesOneEqualTwo: Bool = ( 1 == 2 );
let doesOneNotEqualTwo: Bool = ( 1 != 2 );

/*
  Swift 4.x
  Symbols ?
*/
