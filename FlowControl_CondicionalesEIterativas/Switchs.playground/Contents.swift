//: Playground - noun: a place where people can play

import UIKit;

/*
   El manejo de la estructura condicional switch
*/
/*Un ejemplo básico, siempre se necesita indicar el case default*/
let number = 10;
switch number {
case 0:
    print("Zero");
default:
    print("Non-Zero");
}

switch number {
case 10:
    print("It's ten");
default:
    print("Non-Zero");
}

/*Con mas opciones*/
let pet = "Dog";
switch pet {
case "Cat", "Dog":
    print ("A house pet.");
default:
    print("Not a house pet.");
}

/*Algo un poco mas avanzado*/
let hourOfDay = 12;
let timeOfDay: String;
switch  hourOfDay {
case 0, 1, 2, 3, 4, 5:
    timeOfDay = "Early";
case 6, 7, 8, 9, 10, 11:
    timeOfDay = "Morning";
case 12, 13, 14, 15, 16:
    timeOfDay = "Afternoon";
case 17, 18, 19:
    timeOfDay = "Evening";
case 20, 21, 22, 23:
    timeOfDay = "Late evening";
default:
    timeOfDay = "INVALID!";
}

/*Simplicando la declaración anterior*/
let optimizedHourOfDay = 16;
let optimizedTimeOfDay: String;
switch optimizedHourOfDay {
case 0...5:
    optimizedTimeOfDay = "Early";
case 6...11:
    optimizedTimeOfDay = "Morning";
case 12...16:
    optimizedTimeOfDay = "Afternoon";
case 17...19:
    optimizedTimeOfDay = "Evening";
case 20..<24:
    optimizedTimeOfDay = "Late evening";
default:
    optimizedTimeOfDay = "INVALID!";
}

/*switch con el uso de where*/
let numberToQuery = 12;
switch numberToQuery {
case let aliasNumberToQuery where aliasNumberToQuery % 2 == 0:
    print("Even \(aliasNumberToQuery)");
default:
    print("Odd \(numberToQuery)");
}

/*switch con el uso de _ y where*/
switch numberToQuery {
case _ where numberToQuery % 2 == 0:
    print("Even \(numberToQuery)");
default:
    print("Odd \(numberToQuery)");
}

/*Partial matching*/
/*Aplicando un switch a un diccionario*/
let coordinates = (x: 0, y: 0, z: 10);
switch coordinates {
case (0, 0, 0): //1
    print("Origin");
case (_, 0, 0): //2
    print("x-axis has a value, but y,z axes has 0");
case (0, _, 0): //3
    print("y-axis has a value, but x,z axes has 0");
case (0, 0, _): //4
    print("z-axis has a value, but x,y axes has 0");
default: //5
    print("Somewhere in space");
}

//Aplicando partials con alias de los valores
switch coordinates {
case (0, 0, 0): //1
    print("Origin");
case (let x, 0, 0): //2
    print("x-axis has a value \(x), but y,z axes has 0");
case (0, let y, 0): //3
    print("y-axis has a value \(y), but x,z axes has 0");
case (0, 0, let z): //4
    print("z-axis has a value \(z), but x,y axes has 0");
default: //5
    print("Somewhere in space");
}

switch coordinates {
case let(x, y, _) where y == x:
    print("Along the y(\(y)) == x(\(x))");
case let(x, y, _) where y == x * x:
    print("Along the y = x^2 line.");
default:
    break;
}
