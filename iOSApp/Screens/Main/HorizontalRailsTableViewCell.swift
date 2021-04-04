//
//  HorizontalRailsTableViewCell.swift
//  iOSApp
//
//  Created by Inas Ahmic on 31. 3. 2021..
//

import UIKit

class HorizontalRailsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView! { didSet { self.setupCollectionView() } }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.layer.cornerRadius = 10
        collectionView.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HorizontalRailsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HorizontalRailsCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalRailsCollectionViewCell", for: indexPath) as! HorizontalRailsCollectionViewCell
        
        return cell
    }

}
