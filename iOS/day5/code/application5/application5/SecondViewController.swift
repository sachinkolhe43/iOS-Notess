//
//  SecondViewController.swift
//  application5
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var editEmail: UITextField!
    @IBOutlet weak var editLastname: UITextField!
    @IBOutlet weak var editFirstNAme: UITextField!
    
    var delegate: SendDataDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSave(_ sender: Any) {
        delegate.onResult(firstName: editFirstNAme.text!, lastName: editLastname.text!, email: editEmail.text!)
        dismiss(animated: true)
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true)
    }
}
