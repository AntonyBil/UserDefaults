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
        
        let isOn = UserDefaults.standard.switchIsOn
        updateBackground(isOn: isOn)
        
        let user = User(firstName: "Antony", lastName: "Bil")
        UserDefaults.standard.singedInUser = user
        print("The signed in user is: \(UserDefaults.standard.singedInUser)")
    }


    @IBAction func switchToggled(_ sender: UISwitch) {
        updateBackground(isOn: sender.isOn)
        
        UserDefaults.standard.switchIsOn = sender.isOn
    }
    
    private func updateBackground(isOn: Bool) {
        view.backgroundColor = isOn ? .orange : .darkGray
        switchView.isOn = isOn
    }
}

