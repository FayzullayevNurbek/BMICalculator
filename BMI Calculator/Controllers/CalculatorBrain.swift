//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fayzullayev Nurbek on 27/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    var resultBMI :BMI?
    mutating func calculateBmi(height:Float,weight:Float){
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case 0...18.5:
            self.resultBMI = BMI(value: bmiValue, advice: "Eat more healthy food", color: UIColor.red)

        case 18.5...24.9:
            self.resultBMI = BMI(value: bmiValue, advice: "Keep this level" , color: UIColor.green)
        case 24.9...:
            self.resultBMI = BMI(value: bmiValue, advice: "Lost some extra weight", color: UIColor.yellow)
        default:
            print("error")
        }
    }
    func getBMIValue() -> String{
        let getBMiValue = String(format: "%.1f", resultBMI?.value ?? 0.0)
        return getBMiValue
        
    }
    func getBMIAdvice() ->String{
        return resultBMI?.advice ?? ""
        
    }
    func getBMIColor() ->UIColor{
        return resultBMI?.color ?? .blue
    }
}
