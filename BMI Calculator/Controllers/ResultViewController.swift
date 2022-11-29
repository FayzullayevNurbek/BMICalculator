//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Fayzullayev Nurbek on 27/11/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLAbel: UILabel!
    
    @IBOutlet var adviceLabel: UILabel!
    var bmiValue : String?
    var correctAdvice: String?
    var background : UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLAbel.text = bmiValue
        adviceLabel.text = correctAdvice
        view.backgroundColor = background
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
}
