//
//  ViewController.swift
//  application2
//
//  Created by Amit Kulkarni on 18/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onValueChange(_ sender: Any) {
        if stepper.value == 0 {
            print("delete")
        } else {
            print("update")
        }
        labelValue.text = "Value = \(stepper.value)"
    }
}

