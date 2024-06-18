//
//  UserResult.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 08.06.2024.
//

import Foundation

struct UserResult: Codable {
    private enum CodingKeys: String, CodingKey {
        case profileImage = "profile_image"
    }
    
    let profileImage: ImageSizes
    
    struct ImageSizes: Codable {
        let small: String
        let medium: String
        let large: String
    }
}
