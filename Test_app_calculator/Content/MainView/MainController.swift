//
//  MainController.swift
//  Test_app_calculator
//
//  Created by Heltyr911 on 5/8/20.
//  Copyright © 2020 heltyr. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var nuberInputTextFielt: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var calculatorViewModel: CalculatorViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        calculatorViewModel = CalculatorViewModel()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        nuberInputTextFielt.text = calculatorViewModel?.addNumber(number: sender.tag, numberString: nuberInputTextFielt.text!)
    }
    
    @IBAction func degreeAction(_ sender: Any) {
        self.resultLabel.text = self.calculatorViewModel?.tenInDegree(numberString: nuberInputTextFielt.text!)
    }
    
    @IBAction func factorialAction(_ sender: Any) {
         self.resultLabel.text = self.calculatorViewModel?.getFactorial(numberString: nuberInputTextFielt.text!)
    }
    
    @IBAction func rootAction(_ sender: Any) {
         self.resultLabel.text = self.calculatorViewModel?.getRoot(numberString: nuberInputTextFielt.text!)
    }
    
    @IBAction func delNumberAction(_ sender: Any) {
         nuberInputTextFielt.text = calculatorViewModel?.delNumber(numberString: &nuberInputTextFielt.text!)
    }
    
    @IBAction func pointAction(_ sender: Any) {
        nuberInputTextFielt.text = calculatorViewModel?.addPoint(numberString: nuberInputTextFielt.text!)
    }
    
}
