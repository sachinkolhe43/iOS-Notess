//
//  SecondViewController.swift
//  application4
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    @IBOutlet weak var labelFirstName: UILabel!
    
    // properties to receive the values
    var firstName: String!
    var lastName: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // show the data to user
        labelFirstName.text = firstName
        labelLastName.text = lastName
        labelEmail.text = email
    }
 
    
    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
}
