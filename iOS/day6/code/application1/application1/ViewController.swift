//
//  ViewController.swift
//  application1
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let countries: [String] = [
        "India", "USA", "UK", "Japan"
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // similar to recyclerView.setAdapter()
        tableView.dataSource = self
    }
    
    // add 2 sections in the tableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // similar to getItemCount() of RecyclerView.Adapter
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    // similar to the onCreateViewHolder() and onBindViewHolder() of RecyclerView.Adapter
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a cell object for every row at indexPath
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        // show the country name at the indexPath
        // if let label = cell.textLabel {
        //    label.text = countries[indexPath.row]
        // }
        cell.textLabel?.text = countries[indexPath.row]
        
        // return the newly created cell
        return cell
    }
}


