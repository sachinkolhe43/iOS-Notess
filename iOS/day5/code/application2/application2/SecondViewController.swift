//
//  SecondViewController.swift
//  application2
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onBack(_ sender: Any) {
        // go back to the first view controller
        dismiss(animated: true)
    }
}
