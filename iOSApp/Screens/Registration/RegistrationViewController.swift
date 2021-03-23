//
//  RegistrationViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class RegistrationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: CustomTxtField!{
        didSet{
            email.delegate = self
        }
    }
    
    @IBOutlet weak var username: CustomTxtField!{
        didSet{
            username.delegate = self
        }
    }
    
    @IBOutlet weak var password: CustomTxtField!{
        didSet{
            password.delegate = self
        }
    }
    
    @IBAction func next(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "RegistrationSecondViewController")
        self.present(viewcontoroller, animated: true, completion: nil)
    }
    
    @IBAction func backToLogin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "LoginViewController")
        self.present(viewcontoroller, animated: true, completion: nil)
        
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
    
    func checkUsername(username string: String) {
        if (string.count < 1) {
            let alert = UIAlertController(title: "Alert", message: "Username too short", preferredStyle: .alert)
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
        case username:
            checkUsername(username: username.text ?? "")
        default:
            break
        }
    }
    
//  Kada korisnik klikne next (slika dolje desno) treba validirati da su sva polja popunjena i da svako polje zadovoljava kriterije validacije i tek onda otvoriti naredni screen

}
