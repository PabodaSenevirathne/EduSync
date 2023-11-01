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
    
    
    let cityMapping: [String: String] = [
     
        "Toronto": "Toronto.jpeg",
        "Calgary" : "Calgary.jpeg",
        "Halifax": "Halifax.jpeg",
        "Montreal": "Montreal.jpeg",
        "Winnipeg": "Winnipeg.jpeg",
        "Vancouver": "vancouver.jpeg",
        
    ]
    
    let defaultImage = "Canada.jpeg"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityImage.image = UIImage(named: defaultImage)
        
    }
    
    @IBAction func findMyCity(_ sender: UIButton) {
        if let cityName = cityInput.text,
           let imageName = cityMapping[cityName] {
               cityImage.image = UIImage(named: imageName)
           }
        
        else {
            cityImage.image = nil
        }
    }


}
