//: Playground - noun: a place where people can play

import UIKit

/*
   Booleans -> Bool
   Es un tipo de dato que solo acepta 2 valores "True" ó "False"
*/


let valueA: Double = 1;
let valueB: Double = 2;

let betweenValueAB: Bool = valueB < valueA;
print(betweenValueAB);

// Initializing without value
var valueC: Bool;
valueC = true;

//Casting
//A polifyll for casting a String
extension String {
    func toBool() -> Bool {
        return NSString(string: self).boolValue;
    }
};

let isTrueByString: Bool = "False".toBool();
let isFalseByString: Bool = "True".toBool();

let isTrueByCharacter: Bool = "1".toBool();
let isFalseByCharacter: Bool = "0".toBool();

//let newBoolean: Bool = Bool?('true');

let forBooleans: [String] = [
    "0",
    "01",
    "1",
    "10",
    "100"
];

/*
A basic print
for element in forBooleans {
    print(" values: \(element.toBool())");
}
*/

for (index, value) in forBooleans.enumerated(){
    print("index: \(index) value: \"\(value)\" in boolean is: \(value.toBool())");
}

var newBool: Bool = false;
print(newBool);
