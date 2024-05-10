//
//  OAuth2TokenStorage.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 10.05.2024.
//

import Foundation

final class OAuth2TokenStorage {
    private let tokenKey = "OAuth2AccessToken"
    private let storage = UserDefaults.standard
    
    var token: String? {
        get {
            return storage.string(forKey: tokenKey)
        }
        set {
            storage.set(newValue, forKey: tokenKey)
        }
    }
    
    func logout() {
        storage.removeObject(forKey: tokenKey)
    }
    
    static let shared = OAuth2TokenStorage()
}
