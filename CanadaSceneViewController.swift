//
//  CanadaSceneViewController.swift
//  Paboda_Senevirathne_MT_8927315
//
//  Created by user234693 on 10/31/23.
//

import UIKit

class CanadaSceneViewController: UIViewController {

    
    @IBOutlet weak var cityImage: UIImageView!
    
    @IBOutlet weak var cityInput: UITextField!
    
    @IBOutlet weak var findMyCity: UIButton!
    
    @IBOutlet weak var cityLabel: UILabel!
    
    // dictionary to map city name to image id
    let cityMapping: [String: String] = [
     
        "Toronto": "Toronto.jpeg",
        "Calgary" : "Calgary.jpeg",
        "Halifax": "Halifax.jpeg",
        "Montreal": "Montreal.jpeg",
        "Winnipeg": "Winnipeg.jpeg",
        "Vancouver": "vancouver.jpeg",
        
    ]
    
    // set the default image
    let defaultImage = "Canada.jpeg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityImage.image = UIImage(named: defaultImage)
        cityLabel.text = ""
        
        //tap gesture recognizer to hide the  keyboard
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
    
    // fuction to find the city according to the input
    @IBAction func findMyCity(_ sender: UIButton) {
        if let cityName = cityInput.text,
           let imageName = cityMapping[cityName] {
               cityImage.image = UIImage(named: imageName)
            cityLabel.text = ""
           }
        
        else {
            // display default image if the city is not found
            cityImage.image = UIImage(named: defaultImage)
            cityLabel.text = "City not found"
        }
    }


}
