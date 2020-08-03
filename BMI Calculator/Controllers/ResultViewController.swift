//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Homer on 7/30/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adviceLabel.text = advice
        bmiLabel.text = bmiValue
        view.backgroundColor = color
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
   

}
