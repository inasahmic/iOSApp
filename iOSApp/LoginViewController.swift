//
//  LoginViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var password: CustomTxtField!
    @IBOutlet weak var email: CustomTxtField!
    
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
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self.email)
    }
    
    func isValidPassword() -> Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{8,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self.password)
    }
    


}
