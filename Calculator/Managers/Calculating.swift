//
//  Calculating.swift
//  Calculator
//
//  Created by Mac on 28/05/2021.
//

import Foundation

class Calculating {
    var result = "0";
    var tempValue = "";
    var myModOperator = "";
    
    func getResult() -> String {
        return result;
    }
    
    func addingNumberToLabel(num: String) {
        if result == "0" {
            result = num;
        }else{
            if result.contains(",") && num == "," {
            }else{
                result = result + num;
            }
        }
    }
    
    func getInforAboutOperator(tempOperator: String) {
        tempValue = result;
        myModOperator = tempOperator;
        result = "";
    }
    
    func makeACalculating() {
        switch myModOperator {
        case "+":
            replaceComma()
            let temp = result;
            result = String(Double(tempValue)! + Double(temp)!);
            returnComma();
            break;
        case "-":
            replaceComma()
            let temp = result;
            result = String(Double(tempValue)! - Double(temp)!);
            returnComma();
            break;
        case "x":
            replaceComma()
            let temp = result;
            result = String(Double(tempValue)! * Double(temp)!);
            returnComma();
            break;
        case "/":
            replaceComma()
            let temp = result;
            result = String(Double(tempValue)! / Double(temp)!);
            returnComma();
            break;
        case "%":
            replaceComma()
            let temp = result;
            result = String(Double(tempValue)!.truncatingRemainder(dividingBy: Double(temp)!));
            returnComma();
            break;
        default:
            break;
        }
    }
    
    func changeStage(){
        if result != "0" {
            result = String(Double(result)! * (-1));
        }
    }
    
    func replaceComma() {
        result = result.replacingOccurrences(of: ",", with: ".")
        tempValue = tempValue.replacingOccurrences(of: ",", with: ".")
    }
    
    func returnComma() {
        result = result.replacingOccurrences(of: ".", with: ",")
        tempValue = tempValue.replacingOccurrences(of: ".", with: ",")
    }
        
    func clearAll() {
        result = "0";
        tempValue = "";
        myModOperator = "";
    }
}
