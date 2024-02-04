//
//  FirstViewController.swift
//  application5
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class FirstViewController: UIViewController, SendDataDelegate {
    
    
    @IBOutlet weak var labelFirstName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelLastName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func getDataFromSecondVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController

        vc.delegate = self
        present(vc, animated: true)
    }
    
    func onResult(firstName: String, lastName: String, email: String) {
        labelFirstName.text = firstName
        labelLastName.text = lastName
        labelEmail.text = email
    }
    
}
