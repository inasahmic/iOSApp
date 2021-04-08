//
//  coverScreenViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 7. 4. 2021..
//

import UIKit

class CoverScreenViewController: UIViewController {

    @IBOutlet weak var movieTitle: UILabel!
    
    @IBAction func closeView(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontoroller = storyboard.instantiateViewController(withIdentifier: String(describing: ViewController.self))
        self.present(viewcontoroller, animated: true, completion: nil)
    }
    
    @IBAction func movieDescription(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
