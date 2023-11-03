//
//  QuadraticViewController.swift
//  Paboda_Senevirathne_MT_8927315
//
//  Created by user234693 on 10/31/23.
//

import UIKit

class QuadraticViewController: UIViewController {

    
    @IBOutlet weak var inputA: UITextField!
    
    @IBOutlet weak var inputB: UITextField!
    
    @IBOutlet weak var inputC: UITextField!

    @IBOutlet weak var resultLabel: UITextField!
    
    @IBOutlet weak var calculationButtonTapped: UIButton!
    
    @IBOutlet weak var clearButtonTapped: UIButton!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tap gesture recognizer to hide the  keyboard
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)

        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    @IBAction func calculationButtonTapped(_ sender: UIButton) {
        
        calculate();
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        
        clear();
    }
    
    // function to calculate X
    private func calculate(){
        
        guard let a = Double(inputA.text ?? ""),
        let b = Double(inputB.text ?? ""),
        let c = Double(inputC.text ?? "") else {
            
            // validate the input at first
            messageLabel.text = "Enter valid values for A, B, and C."
            resultLabel.text = ""
            return
        }
        
        // input validation
        if a == 0 {
            messageLabel.text = "The value you entered for A is invalid"
        }
        
        else if b.isNaN {
            messageLabel.text = "The value you entered for B is Invalid"
        }
        
        else if c.isNaN {
            messageLabel.text = "The value you entered for C is Invalid"
            
        } else{
            
            // calculate the value of X
            let result = b * b - 4 * a * c
            
            if result < 0{
                messageLabel.text = "There is no results since the discriminant is less than zero"
                resultLabel.text = ""
                
            } else if result == 0{
                messageLabel.text = "There is only one value for X"
                let x = -b / (2 * a)
                resultLabel.text = "X = \(x)"
                
                
            } else{
                messageLabel.text = "There are two valus for X"
                let x1 = (-b + sqrt(result)) / (2 * a)
                let x2 = (-b - sqrt(result)) / (2 * a)
                resultLabel.text = "X1 = \(String(format: "%.2f", x1)), x2 = \(String(format:"%.2f", x2))"
            }
        }
        
    }
    
    //function to clear details
    private func clear(){
        inputA.text = ""
        inputB.text = ""
        inputC.text = ""
        messageLabel.text = "Enter valid values for A, B, and C."
        resultLabel.text = ""
    }

}
