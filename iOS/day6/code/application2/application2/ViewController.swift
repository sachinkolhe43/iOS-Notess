//
//  ViewController.swift
//  application2
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let cars = [
        "Renault Triber", "Hyundai i20", "Tata Hexa", "Mahindra Xylo", "MG Hector Plus"
    ]
    
    let mobiles = [
        "iPhone 14 pro max", "iPad 11inch"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return cars.count
        } else if section == 1 {
            return mobiles.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = cars[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = mobiles[indexPath.row]
        }
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "List of Cars"
        } else if section == 1{
            return "List of mobiles"
        }
        
        return nil
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        
        if section == 0 {
            return "end of list of cars"
        }
        
        return nil
    }
}

