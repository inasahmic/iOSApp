//
//  ViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

struct TableSection {
    var title: String
    var subTitle: String
    var id: Int
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView! { didSet { self.registerCells() } }
    
    var sections: [TableSection] {
        return [
            TableSection(title: "Featured", subTitle: "What we would recommend", id: 1),
            TableSection(title: "Trending Channels", subTitle: "Enjoy your everyday shows", id: 2),
            TableSection(title: "Trending Movies", subTitle: "Everyone is enjoying these", id: 3),
            TableSection(title: "Top rated movies", subTitle: "See top rated list", id: 4)
        ]
    }
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func registerCells(){
        self.tableView.register(UINib(nibName: "CustomHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CustomHeaderView")
        self.tableView.register(UINib(nibName: "HorizontalRailsTableViewCell", bundle: nil), forCellReuseIdentifier: "HorizontalRailsTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerData: TableSection = sections[section]
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomHeaderView") as! CustomHeaderView
        
        headerView.sectionTitleLabel.text = headerData.title
        headerView.subTitle.text = headerData.subTitle
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let section = sections[indexPath.section]
        let cell = tableView.dequeueReusableCell (withIdentifier: "HorizontalRailsTableViewCell", for:  indexPath) as! HorizontalRailsTableViewCell
        cell.section = section
        return cell
    }
}

//extension ViewController: UICollectionViewDelegate{
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(identifier: "CoverScreenViewController") as? CoverScreenViewController
//        self.navigationController?.pushViewController(vc!, animated: true)
//    }
//    
//}

