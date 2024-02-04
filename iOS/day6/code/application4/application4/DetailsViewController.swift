//
//  DetailsViewController.swift
//  application4
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class DetailsViewController: UIViewController {

    var contact: Contact!
    
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Details"
        labelFirstName.text = contact.firstName
        labelLastName.text = contact.lastName
        labelEmail.text = contact.email
        labelAddress.text = contact.address
        labelPhone.text = contact.phone
    }
    
}
