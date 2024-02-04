//
//  AddViewController.swift
//  application4
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class AddViewController: UIViewController {
    
    var delegate: SendDataDelegate!

    @IBOutlet weak var editFirstName: UITextField!
    @IBOutlet weak var editLastName: UITextField!
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editPhone: UITextField!
    @IBOutlet weak var editAddress: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(onSave))
    }
    
    @objc func onSave() {
        delegate.sendDetails(firstName: editFirstName.text!, lastName: editLastName.text!, email: editEmail.text!, phone: editPhone.text!, address: editAddress.text!)
        
        self.navigationController?.popViewController(animated: true)
    }

}
