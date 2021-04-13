//
//  coverScreenViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 7. 4. 2021..
//

import UIKit

struct Details {
    var title: String
    var duration: String
    var genre: String
    var rating: Int
    var description: String
}

class CoverScreenViewController: UIViewController {
    
    @IBOutlet weak private var movieTitle: UILabel!
    
    func initWithModel(model: CellModel) {
        self.movieTitle.text = model.movieTitle
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
