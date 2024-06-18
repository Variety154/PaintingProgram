//
//  OAuth2TokenStorage.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 10.05.2024.
//

import SwiftKeychainWrapper

protocol OAuth2TokenStorageProtocol {
    var token: String? { get set }
}

final class OAuth2TokenStorage: OAuth2TokenStorageProtocol {
    
    private enum Keys: String {
        case token
    }
    
    var token: String? {
        get {
            return KeychainWrapper.standard.string(forKey: Keys.token.rawValue)
        }
        set {
            guard let newValue else { return }
            KeychainWrapper.standard.set(newValue, forKey: Keys.token.rawValue)
        }
    }
    
    func resetToken() {
        KeychainWrapper.standard.removeObject(forKey: Keys.token.rawValue)
    }
}

