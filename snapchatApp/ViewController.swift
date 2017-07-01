//
//  ViewController.swift
//  snapchatApp
//
//  Created by qamarali on 6/21/17.
//  Copyright © 2017 qamarali. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class ViewController: UIViewController {

   
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func turnUpTapped(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!, completion: {
            (user,error) in
            
            print(" under Finally")
            
            if (error != nil ) {
            print("Hey we have an error")
            }
                else
                {
                    print("Signed In")
            }
            
        })
    }

}

