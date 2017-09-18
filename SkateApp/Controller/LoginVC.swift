//
//  ViewController.swift
//  SkateApp
//
//  Created by Daniel Reicher on 08.07.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var passwortTextfield: UITextField!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var textfieldBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var emailImg: UIImageView!
    @IBOutlet weak var passwortImg: UIImageView!
    
    
    let generator = UIImpactFeedbackGenerator(style: .medium)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextfield.delegate = self
        passwortTextfield.delegate = self
        
        
        buttonStyle()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    //MARK: Login and Registration Buttons
    
    
    @IBAction func LoginBtn(_ sender: Any) {
     generator.impactOccurred()
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwortTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error)
            } else {
                print("sign in")
                self.performSegue(withIdentifier: "login", sender: self)
           
            }
        }
        
    }
    
    
    @IBAction func registerBtnPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwortTextfield.text!) { (user, error) in
            if error != nil {
                print(error)
            } else {
                print("registration successfull")
                self.performSegue(withIdentifier: "login", sender: self)
            }
        }
    }
    
    
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("edditing behginnt")
        
        UIView.animate(withDuration: 0.5) {
            self.textfieldBottomConstraint.constant = 276
            self.view.layoutIfNeeded()
        }
        
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("editting enden")
        
        UIView.animate(withDuration: 0.5) {
            self.textfieldBottomConstraint.constant = 226
            self.view.layoutIfNeeded()
        }
    }
    
    
    
    @IBAction func editingChanged(_ sender: Any) {
        if emailTextfield.text!.characters.count > 13 {
            UIView.animate(withDuration: 1, animations: {
                self.emailImg.alpha = 0
            })
        } else {
            self.emailImg.alpha = 1
        }
    
    }
    
    
    
    @IBAction func editingChangedPasswort(_ sender: Any) {
        
        if passwortTextfield.text!.characters.count > 14 {
            UIView.animate(withDuration: 1, animations: {
                self.passwortImg.alpha = 0
            })
        } else {
            self.passwortImg.alpha = 1
        }
    }
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
    
  
    
    
    
    func buttonStyle() {
        passwortTextfield.alpha = 0
        emailTextfield.alpha = 0
        loginBtn.alpha = 0
        registerBtn.alpha = 0
        passwortTextfield.attributedPlaceholder = NSAttributedString(string: "Passwort", attributes:[NSFontAttributeName: UIFont(name: "Avenir", size: 24)!])
        emailTextfield.attributedPlaceholder = NSAttributedString(string: "Email", attributes:[NSFontAttributeName: UIFont(name: "Avenir", size: 24)!])
        
        UIView.animate(withDuration: 1) {
            self.emailTextfield.alpha = 1
        }
        UIView.animate(withDuration: 2) {
            self.passwortTextfield.alpha = 1
        }
        UIView.animate(withDuration: 3) {
            self.loginBtn.alpha = 1
        }
        UIView.animate(withDuration: 4) {
            self.registerBtn.alpha = 1
        }
        
        for i in 0...3 {
            let blur = UIVisualEffectView(effect: UIBlurEffect(style:
                UIBlurEffectStyle.light))
            blur.frame = loginBtn.bounds
            blur.layer.cornerRadius = 13
            blur.layer.masksToBounds = true
            blur.isUserInteractionEnabled = false
            
            if i == 0 {
                loginBtn.insertSubview(blur, at: 0)
            } else if i == 1 {
                registerBtn.insertSubview(blur, at: 0)
            } else if i == 2 {
                passwortTextfield.insertSubview(blur, at: 0)
            } else if i == 3 {
                emailTextfield.insertSubview(blur, at: 0)
            }
            
        }
    }
    
    
    
}

