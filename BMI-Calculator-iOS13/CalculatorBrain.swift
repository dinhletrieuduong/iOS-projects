//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by MacBook on 3/4/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue = weight / powf(height, 2)
        var advice = ""
        var color = UIColor()
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = UIColor.blue
        } else if bmiValue < 24.5 {
            advice = "Fit as a fiddle!"
            color = UIColor.green
        }
        else {
            advice = "Eat less pies!"
            color = UIColor.red
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
