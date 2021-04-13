//
//  HorizontalRailsCollectionViewCell.swift
//  iOSApp
//
//  Created by Inas Ahmic on 1. 4. 2021..
//

import UIKit

class HorizontalRailsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak private var view: UIView!
    @IBOutlet weak private var image: UIImageView!
    @IBOutlet weak private var movieTitle: UILabel!
    @IBOutlet weak private var movieYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.view.layer.cornerRadius = 20
        self.view.layer.masksToBounds = true
    }
    
    func initWithModel(model: CellModel) {
        self.movieTitle.text = model.movieTitle
        self.movieYear.text = model.movieYear
        self.image.image = model.image
    }
}
