//
//  DetailsViewController.swift
//  application3
//
//  Created by Amit Kulkarni on 15/07/23.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelCompany: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var mobile: Mobile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelModel.text = mobile.model
        labelCompany.text = mobile.company
        labelPrice.text = "Rs. \(mobile.price!)"
        imageView.image = UIImage(named: mobile.image)
    }

    @IBAction func onBack(_ sender: Any) {
        dismiss(animated: true)
    }
}
