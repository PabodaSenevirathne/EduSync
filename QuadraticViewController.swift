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
    
    @IBOutlet weak var messageLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculationButtonTapped(_ sender: UIButton) {
        
        calculate();
    }
    
    

    @IBAction func clearButtonTapped(_ sender: UIButton) {
    }
    
    private func calculate(){
        
        guard let a = Double(inputA.text ?? ""),
        let b = Double(inputB.text ?? ""),
        let c = Double(inputC.text ?? "") else {
            
            messageLabel.text = "Enter valid value for A,B and C."
            return
        }
        
        let result = b * b-4 * a * c
        
        if result < 0{
            messageLabel.text = "There is no results since the discrimination"
            resultLabel.text = ""
            
        }else if result == 0{
            messageLabel.text = "There is only one value for X"
            let x = -b/(2*a)
            resultLabel.text = "X= \(x)"
            
            
        }else{
            messageLabel.text = "There are two valus for X"
            let x1 = (-b + sqrt(result)) / (2 * a)
            let x2 = (-b - sqrt(result)) / (2 * a)
            resultLabel.text = "X1 = \(x1), x2 = \(x2)"
        }
        
    }
    
    private func clear(){
        inputA.text = ""
        inputB.text = ""
        inputC.text = ""
        messageLabel.text = ""
        resultLabel.text = ""
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
