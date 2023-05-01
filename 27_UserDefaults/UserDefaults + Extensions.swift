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
        case signedInUser
    }
    
    var switchIsOn: Bool {
        get {
            bool(forKey: UserDefaultsKeys.switchIsOn.rawValue)
        }
        
        set {
            setValue(newValue, forKey: UserDefaultsKeys.switchIsOn.rawValue)
        }
    }
    
    var singedInUser: User? {
        get {
            if let data = object(forKey: UserDefaultsKeys.signedInUser.rawValue) as? Data {
                let user = try? JSONDecoder().decode(User.self, from: data)
                return user
            }
            return nil
        }
        
        set {
            if newValue == nil {
                removeObject(forKey: UserDefaultsKeys.signedInUser.rawValue)
            } else {
                let data = try? JSONEncoder().encode(newValue)
                setValue(data, forKey: UserDefaultsKeys.signedInUser.rawValue)
            }
        }
    }
}
