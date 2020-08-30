//
//  ViewController.swift
//  Assignment4
//
//  Created by Suhaas Choppavarapu on 8/25/20.
//  Copyright © 2020 Suhaas Choppavarapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var login: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        warningLabel.text = ""
        
        label1.backgroundColor = UIColor.red
        label1.alpha = 0.2
        
        label2.backgroundColor = UIColor.blue
        label2.alpha = 0.2
        
        label3.backgroundColor = UIColor.green
        label3.alpha = 0.2
        
        label4.backgroundColor = UIColor.orange
        label4.alpha = 0.2
        
        
        submitButton.backgroundColor = UIColor.lightGray
    }
    
    
    @IBAction func submitInformation(_ sender: Any) {
        
        
        if usernameTextField.text != "smlogics128aA765IL" {
            warningLabel.text = "Invalid Username"
        } else if passwordTextField.text != "unALTmR2816"{
            warningLabel.text = "Not Strong Enough. Try Again"
        } else {
            warningLabel.text = ""
        }
        
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        let randomNumber = Int.random(in: 0...3)
        if randomNumber == 0 {
            label1.alpha = 1;label2.alpha = 0.2;label3.alpha = 0.2;label4.alpha = 0.2
        } else if randomNumber == 1{
            label1.alpha = 0.2;label2.alpha = 1;label3.alpha = 0.2;label4.alpha = 0.2
        } else if randomNumber == 2{
            label1.alpha = 0.2;label2.alpha = 0.2;label3.alpha = 1;label4.alpha = 0.2
        } else {
            label1.alpha = 0.2;label2.alpha = 0.2;label3.alpha = 0.2;label4.alpha = 1
            
        }
    }
    
}

