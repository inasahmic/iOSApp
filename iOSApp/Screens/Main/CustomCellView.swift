//
//  CustomCellViewController.swift
//  iOSApp
//
//  Created by Inas Ahmic on 30. 3. 2021..
//

import UIKit

class CustomCellView: UITableViewCell {
    
    override func awakeFromNib () {
           super.awakeFromNib ()
        
        }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        
    }
}
