//
//  LoginViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
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
        
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "RegistrationViewController")
        let service = AuthService()
        
        self.present(viewcontoroller, animated: true, completion: nil)
        service.refreshToken()
        print(service.reqToken!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func checkPassowrd(password string: String) {
        if (string.count < 8) {
            let alert = UIAlertController(title: "Alert", message: "Password too short", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            print("Everything ok")
        }
    }
    
    func checkEmail(email string: String) {
        if (string.count < 8) {
            let alert = UIAlertController(title: "Alert", message: "Email too short", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
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
