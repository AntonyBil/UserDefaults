//
//  UserDefaults + Extensions.swift
//  27_UserDefaults
//
//  Created by apple on 01.05.2023.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultsKeys: String {
        case switchIsOn
    }
    
    var switchIsOn: Bool {
        get {
            UserDefaults.standard.bool(forKey: UserDefaultsKeys.switchIsOn.rawValue)
        }
        
        set {
            UserDefaults.standard.setValue(newValue, forKey: UserDefaultsKeys.switchIsOn.rawValue)
        }
    }
}
