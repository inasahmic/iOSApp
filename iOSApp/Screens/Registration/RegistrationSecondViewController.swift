//
//  RegistrationSecondViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 20. 3. 2021..
//

import UIKit

class RegistrationSecondViewController: UIViewController, UITextFieldDelegate {
    
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
        }    }
    

    @IBAction func backToLogin(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "LoginViewController")
        self.present(viewcontoroller, animated: true, completion: {
            //print("screen is presented")
        })
    }
    @IBAction func back(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "RegistrationViewController")
        self.present(viewcontoroller, animated: true, completion: {
            //print("screen is presented")
        })
    }

// dodati validaciju
    
//  var isSelected: Bool { get set }
    
//  Male I Female su radio buttons koji ne postoji u iOS. Kao alternativa koristiti button I image i state property selected. Kreirati enum sa gender opcijama i preko tog enuma pratiti state da se zna da li je selektovan male ili female. Ne koristiti string za pracenje koja je opcija selektovana za gender.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    @objc func dismissKeyboard() {
        
        view.endEditing(true)
    }
    
    func checkFirstName(firstName string: String) {
        if (string.count < 3) {
            print("First name is too short")
        } else {
            print("Everything ok")
        }
    }
    func checkLastName(lastName string: String) {
        if (string.count < 3) {
            print("Last name is too short")
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
