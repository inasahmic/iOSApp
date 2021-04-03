//
//  HorizontalRailsTableViewCell.swift
//  iOSApp
//
//  Created by Inas Ahmic on 31. 3. 2021..
//

import UIKit

class HorizontalRailsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HorizontalRailsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HorizontalRailsCollectionViewCell")
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalRailsCollectionViewCell", for: indexPath) as! HorizontalRailsCollectionViewCell
        
            return cell
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        collectionView.layer.cornerRadius = 10
        collectionView.layer.masksToBounds = true
        
    }
    
    // implementacija za collection view delegate i data source
}
