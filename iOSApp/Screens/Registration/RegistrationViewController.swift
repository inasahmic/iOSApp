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
        self.present(viewcontoroller, animated: true, completion: {
            
        })
    }
    
    @IBAction func backToLogin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "LoginViewController")
        self.present(viewcontoroller, animated: true, completion: {
            
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
    
    @objc func tapBack (_ sender: UITapGestureRecognizer) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "LoginViewController")
        self.present(viewcontoroller, animated: true, completion: {
            //print("screen is presented")
        })
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
    func checkUsername(username string: String) {
        if (string.count < 1) {
            print("username is too short")
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
