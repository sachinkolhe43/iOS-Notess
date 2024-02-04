//
//  FirstViewController.swift
//  application3
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var editLastName: UITextField!
    @IBOutlet weak var editFirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onSendData(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // typecast the object to SecondViewController
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                
        // send the required data
        vc.firstName = editFirstName.text!
        vc.lastName = editLastName.text!
        
        present(vc, animated: true)
    }
}
