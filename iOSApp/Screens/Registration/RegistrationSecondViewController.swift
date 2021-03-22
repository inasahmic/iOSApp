//
//  RegistrationSecondViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 20. 3. 2021..
//

import UIKit

class RegistrationSecondViewController: UIViewController {

    @IBAction func backToLogin(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Registration", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(identifier: "RegistrationViewController")
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

        // Do any additional setup after loading the view.
    }
    


}
