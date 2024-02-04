//
//  InputViewController.swift
//  application6
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var editPrice: UITextField!
    @IBOutlet weak var editModel: UITextField!
    @IBOutlet weak var editCompany: UITextField!
    
    var delegate: ReceiveDataDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSave(_ sender: Any) {
        delegate.onResult(model: editModel.text!, company: editCompany.text!, price: editPrice.text!)
        dismiss(animated: true)
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true)
    }
}
