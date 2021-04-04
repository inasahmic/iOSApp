//
//  ViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 17. 3. 2021..
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView! { didSet { self.registerCells() } }
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func registerCells(){
        self.tableView.register(UINib(nibName: "CustomHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CustomHeaderView")
        self.tableView.register(UINib(nibName: "HorizontalRailsTableViewCell", bundle: nil), forCellReuseIdentifier: "HorizontalRailsTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomHeaderView") as! CustomHeaderView
        headerView.sectionTitleLabel.text = "Movies"
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell (withIdentifier: "HorizontalRailsTableViewCell", for:  indexPath) as! HorizontalRailsTableViewCell
        cell.textLabel?.text = "Slike"
        
        return cell
    }
}
