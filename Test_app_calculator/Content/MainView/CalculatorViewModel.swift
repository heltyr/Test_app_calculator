//
//  CalculatorViewModel.swift
//  Test_app_calculator
//
//  Created by Heltyr911 on 5/8/20.
//  Copyright © 2020 heltyr. All rights reserved.
//

import Foundation

protocol CalculatorViewModelType: class {
    func addNumber(number: Int, numberString: String) -> String
    func delNumber( numberString: inout String) -> String
    func addPoint(numberString: String) -> String
    func tenInDegree(numberString: String) -> String
    func getFactorial(numberString: String) -> String
    func getRoot(numberString: String) -> String
}

class CalculatorViewModel: CalculatorViewModelType{
    
    var newNumger = false
    
    //получить корень из числа
    func getRoot(numberString: String) -> String{
        
        newNumger = true
        
        let number = Double(numberString)
        return getStringResult(result: (number?.squareRoot())! )
    }
    
    
    //вычисление факториала
    func getFactorial(numberString: String) -> String{
        
        newNumger = true
        
        let number = Int(numberString)
        if number == 0{
            return "Result: \n1"
        }
        if (number ?? -1) == -1{
            return "Result: \nError"
        } else {
            let result = (1...(number ?? 0)).map(Double.init).reduce(1.0, *)
            
            return getStringResult(result: result)
        }
    }
    
    //вычисление 10 в степени n
    func tenInDegree(numberString: String) -> String{
        
        newNumger = true
        
        let number = Double(numberString)
        let result = pow(10,number!)
        
        return getStringResult(result: result)
    }
    
    // вывести результат
    func getStringResult(result: Double) -> String{
        if result == .infinity {
            return "Result: \nError"
        } else {
            return "Result: \n\(result)"
        }
    }
    
    //стереть цифру
    func delNumber( numberString: inout String) -> String{
        
        if numberString.count == 1 || newNumger{
            newNumger = false
            return "0"
        } else {
            numberString.removeLast()
            return numberString
        }
    }
    
    //добавить цифру
    func addNumber(number: Int, numberString: String) -> String{
        
        if numberString == "0" || newNumger{
            newNumger = false
            return "\(number)"
        } else {
            return "\(numberString)\(number)"
        }
    }
    
    //добавить точку
    func addPoint(numberString: String) -> String{
        newNumger = false
        if numberString.contains(".") || newNumger{
            return numberString
        } else {
            return "\(numberString)."
        }
    }
}
