//
//  ViewController.swift
//  application3
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let mobiles: [Mobile] = [
        Mobile(model: "iPhone 13", company: "Apple", price: "206000", image: "iphone13.png"),
        Mobile(model: "iPhone 10s", company: "Apple", price: "199000", image: "iphon10.png"),
        Mobile(model: "iPad", company: "Apple", price: "115000", image: "ipad.png")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("user has tapped a row at section:\(indexPath.section), row: \(indexPath.row)")
        
        // let the selection release
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.mobile = mobiles[indexPath.row]
        present(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("section = \(section)")
        return mobiles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell")!
        
        let mobile = mobiles[indexPath.row]
        
        let labelModel = cell.viewWithTag(100) as! UILabel
        let labelCompany = cell.viewWithTag(200) as! UILabel
        let labelPrice = cell.viewWithTag(300) as! UILabel
        let imageView = cell.viewWithTag(400) as! UIImageView
        
        labelModel.text = mobile.model
        labelCompany.text = mobile.company
        labelPrice.text = mobile.price
        imageView.image = UIImage(named: mobile.image)
        
        return cell
    }
}

