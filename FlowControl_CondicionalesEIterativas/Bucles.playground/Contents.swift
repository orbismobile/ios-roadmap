//: Playground - noun: a place where people can play

import UIKit

//Whiles

var total = 10;
var count = 1;
while count < total {
    print("while -> count: \(count)");
    count = count + 1;
};

//Repeat while loops
var countForRepeatLoop = 0;
repeat {
    print("repeat while -> count: \(countForRepeatLoop)");
    countForRepeatLoop = countForRepeatLoop + 1;
} while countForRepeatLoop < total;

//Breaking a loop
var breakedLoop = 1;
while true {
    breakedLoop = breakedLoop + 1;
    // Cancelando el bucle
    if breakedLoop == 10 {
        break;
    }
}

//Ranges
/* Manejando rangos de valores */
let rangeUntil5 = 0...5;
print("rangeUntil5.count -> \(rangeUntil5.count)");

let halfOpenRange5 = 0..<5;
print("halfOpenRange5.count -> \(halfOpenRange5.count)");

//For loops
var sum = 0;
for index in 0...10 {
    print("For loops: rangeUntil5 -> \(index)");
    sum = sum + index;
}
sum;

for otherIndex in halfOpenRange5 {
    print("For loops: halfOpenRange5 -> \(otherIndex)");
}

/* Ejemplo de una iteración de números sin usar una variable de indice.*/
let totalIterations = 10;
var sumTotal = 1;
var lastSumTotal = 0;

for _ in 0..<totalIterations {
    let temp = sumTotal;
    sumTotal = sumTotal + lastSumTotal;
    lastSumTotal = temp;
}

/*Aplicando con la palabra reservada where*/
let countWithWhere = 10;
var sumWithWhere = 0;
for j in 1...countWithWhere where j % 2 == 1 {
    sumWithWhere += j;
}
sumWithWhere;

/*También se puede recorrer en este ejemplo las filas que sean pares*/
var sumForRowsMod2 = 0;
for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    print("sumForRowsMod2: row \(row)");
    for column in 0..<8 {
        sumForRowsMod2 += row * column;
    }
}
print("sumForRowsMod2: sumForRowsMod2 \(sumForRowsMod2)");

/*el uso de tags en los bucles tmb es interesante*/
var sumofTaggedLoops = 0;
rowLoop: for taggedLoopRow in 0..<8 {
    columnLoop: for taggedLoopColumn in 0..<8 {
        if taggedLoopRow == taggedLoopColumn {
            continue rowLoop;
        }
        print("taggedLoopRow \(taggedLoopRow)");
        print("taggedLoopColumn \(taggedLoopColumn)");
        sumofTaggedLoops += taggedLoopRow * taggedLoopColumn;
    }
}
