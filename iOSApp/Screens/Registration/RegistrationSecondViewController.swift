//
//  RegistrationSecondViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 20. 3. 2021..
//

import UIKit

class RegistrationSecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var selected: UIImageView!
    
    @IBOutlet weak var notSelected: UIImageView!
    
    @IBOutlet weak var firstName: CustomTxtField!{
        didSet{
            firstName.delegate = self
        }
    }
    
    @IBOutlet weak var lastName: CustomTxtField!{
        didSet{
            lastName.delegate = self
        }
    }
    
    @IBOutlet weak var age: CustomTxtField!{
        didSet{
            age.delegate = self
        }
    }
    
    @IBAction func backToLogin(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(withIdentifier: String(describing: LoginViewController.self))
        self.present(viewcontoroller, animated: true, completion: nil)
    }
    
    @IBAction func back(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(withIdentifier: String(describing: RegistrationViewController.self))
        self.present(viewcontoroller, animated: true, completion: nil)
    }
    
    // MARK: - Methods -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
//    enum Gender_Select{
//        case maleSelected
//        case femaleSelected
//    }
//
//    func genderMale(maleSelected: Bool){
//        if (maleSelected == true){
//            // show image with blue dot
//            // imageView = selected
//        } else {
//            // show image with empty circle
//            // imageView = notSelected
//        }
//    }
//    func genderFemale(femaleSelected: Bool){
//        if (femaleSelected == true){
//            // show image with blue dot
//
//        } else {
//            //show image with empty circle
//        }
//    }
    
    func checkFirstName(firstName string: String) {
        if (string.count < 3) {
            let alert = UIAlertController(title: "Alert", message: "First name too short", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            print("Everything ok")
        }
    }
    
    func checkLastName(lastName string: String) {
        if (string.count < 3) {
            let alert = UIAlertController(title: "Alert", message: "Last name too short", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            print("Everything ok")
        }
    }
    
    func checkAge(age string: Int) {
        if (string == 0) {
            print("Not valid")
        } else {
            print("Everything ok")
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch textField {
        case firstName:
            checkFirstName(firstName: firstName.text ?? "")
        case lastName:
            checkLastName(lastName: lastName.text ?? "")
        case age:
            checkAge(age: age.hash)
        default:
            break
        }
    }
}
