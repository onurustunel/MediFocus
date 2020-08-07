//
//  introVC.swift
//  MediFocus
//
//  Created by MEHMET ONUR ÜSTÜNEL on 4.08.2020.
//  Copyright © 2020 MEHMET ONUR ÜSTÜNEL. All rights reserved.
//

import UIKit

var username = ""
class introVC: UIViewController {
    
    
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let storedName = UserDefaults.standard.object(forKey: "username")
       
        
        if let newUserName = storedName as? String {
           usernameLabel.text = newUserName
            username = usernameLabel.text!
            print("veritanabından \(username) geldi")
            
        }
     
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backImage.addSubview(blurEffectView)
      
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        if nameText.text != "" {
            UserDefaults.standard.set(nameText.text?.capitalized, forKey: "username")
            usernameLabel.text = nameText.text?.capitalized
            username = usernameLabel.text!
            performSegue(withIdentifier: "firstVC", sender: nil)
            
        }
        
        
    }
    

}
