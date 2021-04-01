//
//  ViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        _ = "CustomTableViewCell"
            
        let cell = tableView.dequeueReusableCell (withIdentifier: "HorizontalRailsTableViewCell", for:  indexPath) as! HorizontalRailsTableViewCell
        
        cell.collectionView.layer.cornerRadius = 10
            
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    // Create a standard header that includes the returned text.
    @objc internal func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
       return "Header \(section)"
    }

    // Create a standard footer that includes the returned text.
    @objc internal func tableView(_ tableView: UITableView, titleForFooterInSection
                                section: Int) -> String? {
       return "Footer \(section)"
    }
    
}
