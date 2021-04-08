//
//  HorizontalRailsTableViewCell.swift
//  iOSApp
//
//  Created by Inas Ahmic on 31. 3. 2021..
//

import UIKit

struct CellModel {
    var movieTitle: String
    var movieYear: String
    var image: UIImage
}

class HorizontalRailsTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    weak var viewController: CoverScreenViewController?
    
    @IBOutlet weak var collectionView: UICollectionView! { didSet { self.setupCollectionView() } }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    var section: TableSection? = nil{
        didSet{
            loadCells()
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    var cellData: [CellModel]?
    
    func loadCells() {
        guard let section = self.section else {
            return
        }
        self.cellData = [CellModel]()
        
        switch section.id {
        case 1:
            cellData?.append(CellModel(movieTitle: "Green Book", movieYear: "2019", image: Asset.greenbook.image))
            cellData?.append(CellModel(movieTitle: "Kung Fu Panda", movieYear: "2014", image: Asset.kfp.image))
            cellData?.append(CellModel(movieTitle: "bbb", movieYear: "2020", image: Asset.logo.image))
            cellData?.append(CellModel(movieTitle: "ccc", movieYear: "2020", image: Asset.logo.image))
        case 2:
            cellData?.append(CellModel(movieTitle: "Animal Planet", movieYear: "", image: Asset.animal.image))
            cellData?.append(CellModel(movieTitle: "RTL", movieYear: "", image: Asset.rtl.image))
            cellData?.append(CellModel(movieTitle: "OBN", movieYear: "", image: Asset.logo.image))
        case 3:
            cellData?.append(CellModel(movieTitle: "Batman vs Superman", movieYear: "2018", image: Asset.bvss.image))
            cellData?.append(CellModel(movieTitle: "Moonlight", movieYear: "2016", image: Asset.moon.image))
        case 4:
            cellData?.append(CellModel(movieTitle: "vw", movieYear: "2055", image: Asset.logo.image))
            cellData?.append(CellModel(movieTitle: "ooooo", movieYear: "2024", image: Asset.logo.image))
        default:
            return
        }
    }
    
    func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "HorizontalRailsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HorizontalRailsCollectionViewCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.cellData?.count ?? 0
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("selected")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        if section?.id == 1{
            return CGSize(width: 250.0, height: 130.0)
            
        }
        return CGSize(width: 200.0, height: 120.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellNumber: CellModel = cellData?[indexPath.row] ?? CellModel(movieTitle: "", movieYear: "", image: Asset.homer.image)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalRailsCollectionViewCell", for: indexPath) as! HorizontalRailsCollectionViewCell
        cell.movieTitle.text = cellNumber.movieTitle
        cell.movieYear.text = cellNumber.movieYear
        cell.image.image = cellNumber.image
        
        return cell
    }
}
