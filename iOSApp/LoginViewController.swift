//
//  LoginViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // RETURN DUGME DA DISMISS KEYBOARD
    // PROSIRIT VALIDACIJU
    
    @IBOutlet weak var password: CustomTxtField!{
        didSet{
            password.delegate = self
        }
    }
    @IBOutlet weak var email: CustomTxtField! {
        didSet {
            email.delegate = self
        }
    }
    
    @IBAction func button(_ sender: Any) {
        
        //print ("Accepted !!")
     let storyboard = UIStoryboard(name: "Registration", bundle: nil)
     let viewcontoroller = storyboard.instantiateViewController(identifier: "RegistrationViewController")
     self.present(viewcontoroller, animated: true, completion: {
         //print("screen is presented")
     })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func checkPassowrd(password string: String) {
        if (string.count < 8) {
            print("Password is too short")
        } else {
            print("Everything ok")
        }
    }
    func checkEmail(email string: String) {
        if (string.count < 8) {
            print("email is too short")
        } else {
            print("Everything ok")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
        case email:
            checkEmail(email: email.text ?? "")
        case password:
            checkPassowrd(password: password.text ?? "")
        default:
            break
        }
    }
    


}
