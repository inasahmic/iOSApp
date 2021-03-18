//
//  RegistrationViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var backToLogin: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToLogin.isUserInteractionEnabled = true
        self.backToLogin.addGestureRecognizer(UIGestureRecognizer.init(target: self, action: #selector(self.tapBack(_:))))

        // Do any additional setup after loading the view.
    }
    
    @objc func tapBack (_ sender: UITapGestureRecognizer) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "LoginViewController")
        self.present(viewcontoroller, animated: true, completion: {
            //print("screen is presented")
        })
    }
    

}
