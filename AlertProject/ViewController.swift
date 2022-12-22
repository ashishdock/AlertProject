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

    @IBAction func signupButtonClicked(_ sender: UIButton) {
        
        // can make a function for alert and use it repeatedly in many other places in the app.
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked
            print("Alert OK button clicked.")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
        //if usernameTextField.text = "" {
            
        //}
    }
    
}

