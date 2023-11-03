//
//  Scene6ViewController.swift
//  Paboda_Senevirathne_MT_8927315
//
//  Created by user234693 on 11/2/23.
//

import UIKit

class Scene6ViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var country: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var addText: UIButton!
    
    @IBOutlet weak var submitText: UIButton!
    
    @IBOutlet weak var systemMessages: UILabel!
    
    @IBOutlet weak var clearText: UIButton!
    
    
    var addTextButtonClicked = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set text view uneditable
        textView.isEditable = false
    
        // Do any additional setup after loading the view.
        firstName.placeholder = "First Name"
        lastName.placeholder = "Last Name"
        country.placeholder = "Country"
        age.placeholder = "Age"
    }
    
    @IBAction func addText(_ sender: UIButton) {
        
        let userFisrtName = firstName.text ?? ""
        let userLastName = lastName.text ?? ""
        let userCountry = country.text ?? ""
        let userAge = age.text ?? ""
        let fullName  = userFisrtName + " " + userLastName
        let userDetails = "Full Name : \(fullName)\nCountry : \(userCountry)\nAge : \(userAge)\n\n"
        textView.text.append(userDetails)
        
        addTextButtonClicked = true
    }
    
    @IBAction func submitText(_ sender: UIButton) {
            if firstName.text?.isEmpty == true ||
                lastName.text?.isEmpty == true ||
                country.text?.isEmpty == true ||
                age.text?.isEmpty == true {
                systemMessages.text = "Complete the missing info!"
                systemMessages.textColor = .red
            } else {
                // track whether 'Add' button has been clicked
                if addTextButtonClicked {
                    systemMessages.text = "Successfully Submitted!"
                    systemMessages.textColor = .green
                }else{
                    systemMessages.text = "Click 'Add' before sumbit"
                    systemMessages.textColor = .red
                }
            }
        
    }
    
    @IBAction func clearText(_ sender: UIButton) {
        firstName.text = ""
        lastName.text = ""
        country.text = ""
        age.text = ""
        textView.text = ""
        systemMessages.text = ""
        addTextButtonClicked =  false    }
}
