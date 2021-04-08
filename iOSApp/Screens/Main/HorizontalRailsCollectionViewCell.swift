//
//  HorizontalRailsCollectionViewCell.swift
//  iOSApp
//
//  Created by Inas Ahmic on 1. 4. 2021..
//

import UIKit

class HorizontalRailsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieYear: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.view.layer.cornerRadius = 20
        self.view.layer.masksToBounds = true
    }
}
