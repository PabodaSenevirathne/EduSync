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
    
        "Toronto": "toronto.jpg",
        "Vancouver": "vancouver.jpg",
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func findMyCity(_ sender: UIButton) {
        if let cityName = cityInput.text,
           let imageName = cityMapping[cityName]{
               cityImage.image = UIImage(named: imageName)
               
           }
        else{
            cityImage.image = nil 
        }
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
