//
//  ProfileImageService.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 07.06.2024.
//

import Foundation

final class ProfileImageService {
    
    static let didChangeNotification = Notification.Name(rawValue: "ProfileImageProviderDidChange")
        
    struct UserResult: Codable {
        
    }
    
    func fetchProfileImageURL(username: String, _ completion: @escaping(Result<String, Error>) -> Void) {
        
    }
    
    static let shared = ProfileImageService()
    
    private (set) var avatarURL: String?
}
