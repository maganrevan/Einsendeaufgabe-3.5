//
//  main.swift

/* ####################################################
                    Einsendeaufgabe 3.5
 ##################################################### */

//
//  Created by Magnus Kruschwitz on 18.07.18.
//  Copyright © 2018 Magnus Kruschwitz. All rights reserved.
//

import Foundation

func addition(iSummand1 : Int, iSummand2 : Int) -> Int{
    return (iSummand1 + iSummand2)
}

func multiplication(iFaktor1 : Int, iFaktor2 : Int) -> Int{
    return (iFaktor1 * iFaktor2)
}

func division(iDividend : Int, iDivisior : Int) -> Int{
    return (iDividend / iDivisior)
}

func substraction(iMinuend : Int, iSubtrahend : Int) -> Int{
    return (iMinuend - iSubtrahend)
}

func exponentiation(iBase : Int, iExponent : Int) ->Int{
    var result = 1
    
    if iExponent > 0{
        for _ in 1...iExponent{
            result *= iBase
        }
    }
    
    return result
}

print("Dies ist ein einfacher Taschenrechner, welcher Ganzzahlen berechnet über + - / * ^. \nBitte geben Sie zunächst den 1. Wert, dann den 2. Wert und schließlich die Operation an. Die Operation kann über die gängigen Zeichen + - / * ^ und auch über die Zahlen von 1 - 5 eingegeben werden.")
print("Bitte geben Sie den 1. Wert ein:")
var iFirstInput = Int(readLine()!)!
print("Bitte geben Sie den 2. Wert ein:")
var iSecondInput = Int(readLine()!)!
print("Bitte wählen Sie eine Operation:")
var sOperant = readLine()!

switch sOperant{
    case "+","1":
        print("Die Summe aus \(iFirstInput) und \(iSecondInput) lautet \(addition(iSummand1: iFirstInput, iSummand2: iSecondInput))")
        break
    case "-","2":
        print("Die Differenz aus \(iFirstInput) und \(iSecondInput) lautet \(substraction(iMinuend: iFirstInput, iSubtrahend: iSecondInput))")
        break
    case "/","3":
        print("Der Quotient aus \(iFirstInput) und \(iSecondInput) lautet \(Int(division(iDividend: iFirstInput, iDivisior: iSecondInput)))")
        break
    case "*","4":
        print("Das Produkt aus \(iFirstInput) und \(iSecondInput) lautet \(Int(multiplication(iFaktor1: iFirstInput, iFaktor2: iSecondInput)))")
        break
    case "^","5":
        print("Das Ergebnis von \(iFirstInput)^\(iSecondInput) lautet \(exponentiation(iBase: iFirstInput, iExponent: iSecondInput))")
        break
    default:
        print("Die Eingabe war nicht verwertbar!!!")
}
