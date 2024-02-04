//
//  SecondViewController.swift
//  application3
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    
    // property to collect the data from FirstViewController
    var firstName: String!
    var lastName: String!
    
    
    // similar to onCreate of Activity
    override func viewDidLoad() {
        super.viewDidLoad()

        // show the data received in SecondViewController
        labelFirstName.text = firstName
        labelLastName.text = lastName
    }

    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
}
