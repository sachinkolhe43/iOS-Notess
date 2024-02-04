//
//  FirstViewController.swift
//  application2
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onSecondViewController(_ sender: Any) {
        
        // load the storyboard named Main.storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // create an object of SecondViewController using storyborad ID
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
        
        // present the view controller
        present(vc, animated: true)
    }
}
