//
//  ViewController.swift
//  application8
//
//  Created by Amit Kulkarni on 14/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var switchTest: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func onChangeSliderValue(_ sender: Any) {
        labelSlider.text = "\(slider.value)"
    }
    
    
    @IBAction func onChangeSwitchValue(_ sender: Any) {
        labelSwitch.text = "\(switchTest.isOn	)"
    }
    

}

