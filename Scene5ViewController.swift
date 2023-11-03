//
//  Scene5ViewController.swift
//  Paboda_Senevirathne_MT_8927315
//
//  Created by user234693 on 11/2/23.
//

import UIKit

class Scene5ViewController: UIViewController {

    @IBOutlet weak var CountertMateIcon: UIImageView!
    @IBOutlet weak var CounterMateLabel: UILabel!
    
    
    @IBOutlet weak var CounterMateSubtract: UIButton!
    
    
    @IBOutlet weak var CounterMateAdd: UIButton!
    
    @IBOutlet weak var CounterMateReset: UIButton!
    
    @IBOutlet weak var CounterMateStep: UIButton!
    
    var Number: Int = 0
   
    var DynamicValue: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateCounterLabel()
    }

    // action for subtract button
    @IBAction func CounterMateSubtract(_ sender: UIButton) {
        Number -= DynamicValue
        UpdateCounterLabel()
    }
    
    
    // action for add button
    @IBAction func CounterMateAdd(_ sender: UIButton) {
        Number += DynamicValue
        UpdateCounterLabel()
    }
    
    // action for reset botton
    @IBAction func CounterMateReset(_ sender: UIButton) {
        Number = 0
        DynamicValue = 1
        UpdateCounterLabel()
    }
    
    // action for step button
    @IBAction func CounterMateStep(_ sender: UIButton) {
         DynamicValue = 2
         
    }
    
    // function for update the label
    func UpdateCounterLabel(){
        CounterMateLabel.text = String(format: "%d", Number)
        
    }
    

}
