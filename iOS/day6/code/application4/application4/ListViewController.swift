//
//  ListViewController.swift
//  application4
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class ListViewController: UIViewController, SendDataDelegate, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "My Contacts"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(launchAddViewController))
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    @objc func launchAddViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func sendDetails(firstName: String, lastName: String, email: String, phone: String, address: String) {
        
        contacts.append(Contact(firstName: firstName, lastName: lastName, email: email, address: address, phone: phone))
        
        // similar to notifyDatasetChanged()
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = "\(contact.firstName!) \(contact.lastName!)"
        cell.detailTextLabel?.text = contact.phone
        
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.contact = contacts[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
