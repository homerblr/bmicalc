//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Homer on 8/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }

    func getAdvice() -> String {
        let advice = bmi?.advice ?? "Nil"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? .red
        return color
    }
    
    mutating func calculateBMI(height : Float, weight: Float) {
       var bmiValue = weight / (pow(height, 2))
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Healthy", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Obese", color: .red)
        }
        
//        bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
      
    }
}
