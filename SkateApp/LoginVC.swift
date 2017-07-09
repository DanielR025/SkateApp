//
//  ViewController.swift
//  SkateApp
//
//  Created by Daniel Reicher on 08.07.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var UsernameOutlet: UITextField!
    
    @IBOutlet weak var PasswortOutlet: UITextField!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UsernameOutlet.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSForegroundColorAttributeName: UIColor.black])
        PasswortOutlet.attributedPlaceholder = NSAttributedString(string: "Passwort", attributes: [NSForegroundColorAttributeName: UIColor.black])
        
    }

    
    
    @IBAction func LoginBtn(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    
    
    
    
    
    
}

