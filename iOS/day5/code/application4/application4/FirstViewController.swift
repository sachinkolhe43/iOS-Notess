//
//  FirstViewController.swift
//  application4
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editLastName: UITextField!
    @IBOutlet weak var editFirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSend(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        // send the data
        vc.firstName = editFirstName.text!
        vc.lastName = editLastName.text!
        vc.email = editEmail.text!
        
        present(vc, animated: true)
    }
}
