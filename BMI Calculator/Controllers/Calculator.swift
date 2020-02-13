//
//  Calculator.swift
//  BMI Calculator
//
//  Created by James Frazee on 2/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = (weight / pow(height, 2)) * 703
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "You need to eat more", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Good job! You're healthy", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You should eat less.", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice()-> String{
        let advice = bmi?.advice
        return advice ?? "There isn't any advice to give."
    }
    
    func getColor()-> UIColor{
        let color = bmi?.color
        return color ?? .green
    }
}
