//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Jack on 24/1/2562 BE.
//  Copyright © 2562 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var categoryResult: UILabel!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func bmiCalculate(_ sender: UIButton) {
        let height: Double? = Double(heightInput.text!)
        let weight: Double? = Double(weightInput.text!)
        let bmi: Double = (weight ?? 0)/(pow((height ?? 0)/100,2))

        bmiResult.text = "Your BMI is \(bmi)"
        if bmi < 18.5 {
            categoryResult.text = "Underweight"
            imageView.image = UIImage(named: "underweight.png")
        }
        else if bmi < 25 {
            categoryResult.text = "Normal"
            imageView.image = UIImage(named: "normal.png")
        }
        else if bmi < 30 {
            categoryResult.text = "Overweight"
            imageView.image = UIImage(named: "overweight.png")
        }
        else {
            categoryResult.text = "Obese!"
            imageView.image = UIImage(named: "obese.png")
        }
    }
    
}

