//
//  ViewController.swift
//  AlertProject
//
//  Created by Ashish Sharma on 12/22/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordRepeatTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }

    func alertMessage(title: String, message: String) {
        // can make a function for alert and use it repeatedly in many other places in the app.
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked
            print("Alert OK button clicked.")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func signupButtonClicked(_ sender: UIButton) {
        
        if usernameTextField.text == "" {
            alertMessage(title: "Error!", message: "username not found")
        }
        else if passwordTextField.text == "" {
            alertMessage(title: "Error!", message: "password not found")
        }
        else if passwordRepeatTextField.text == ""{
            alertMessage(title: "Error!", message: "passwords do not match")
        }
        else {
            alertMessage(title: "Success!", message: "User Registration Successful.")
        }
    }
    
}

