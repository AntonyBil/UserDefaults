//
//  ViewController.swift
//  27_UserDefaults
//
//  Created by apple on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func switchToggled(_ sender: UISwitch) {
        view.backgroundColor = sender.isOn ? .orange : .darkGray
    }
}

