//
//  MainViewController.swift
//  application6
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class MainViewController: UIViewController, ReceiveDataDelegate {
    
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelCompany: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onGetData(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "InputViewController") as! InputViewController
        vc.delegate = self
        present(vc, animated: true)
    }
    
    func onResult(model: String, company: String, price: String) {
        labelModel.text = model
        labelCompany.text = company
        labelPrice.text = price
    }
    
}
