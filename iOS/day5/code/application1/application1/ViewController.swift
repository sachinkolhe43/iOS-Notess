//
//  ViewController.swift
//  application1
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var editFirstName: UITextField!
    @IBOutlet weak var editLastName: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showErrorAlert(message: String) {
        // create an alert screen
        let alert = UIAlertController(title: "error", message: message, preferredStyle: .alert)
        
        // add a button
        // by default, any alert action will dismiss the alert
        alert.addAction(UIAlertAction(title: "blah blah", style: .default, handler: { alert in
            print("inside the button handler")
        }))
        
        // show / present this alert to the use
        present(alert, animated: true)
    }

    // void onClick(View view) {..}
    @IBAction func onSave(_ sender: Any) {
        print("save button called")
        
        // validation
        if editFirstName.text!.count == 0 {
            showErrorAlert(message: "First name is mandatory, please enter one..")
        } else if editLastName.text!.count == 0 {
            showErrorAlert(message: "Last name is mandatory, please enter one..")
        } else {
            
            print("first name: \(editFirstName.text!)")
            print("last name: \(editLastName.text!)")
            print("email: \(editEmail.text!)")
            print("phone: \(editPhone.text!)")
            print()
        }
    }
    
}

