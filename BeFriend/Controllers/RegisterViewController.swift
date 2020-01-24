//
//  RegisterViewController.swift
//  BeFriend
//
//  Created by Danijela Vrzan on 2020-01-23.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                //If error is not nil
                if let err = error {
                    //Change this for real error pop-up
                    //Maybe create a label to show on screen or UIAlert
                    print(err.localizedDescription)
                } else {
                    self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                }
            }
        }
    }

}
