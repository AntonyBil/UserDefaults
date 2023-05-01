//
//  ViewController.swift
//  27_UserDefaults
//
//  Created by apple on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isOn = UserDefaults.standard.bool(forKey: "switchIsOn")
        updateBackground(isOn: isOn)
    }


    @IBAction func switchToggled(_ sender: UISwitch) {
        updateBackground(isOn: sender.isOn)
        
        //Use UserDefaults
        UserDefaults.standard.setValue(sender.isOn, forKey: "switchIsOn")
    }
    
    private func updateBackground(isOn: Bool) {
        view.backgroundColor = isOn ? .orange : .darkGray
        switchView.isOn = isOn
    }
}

