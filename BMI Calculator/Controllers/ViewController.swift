//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let stringHeight = String(format: "%.2f", sender.value)
        heightLabel.text = "\(stringHeight)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let stringWeight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(stringWeight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let BMI = weight / (height * height)
        print(BMI)

        let secondVC = ResultViewController()
      
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

