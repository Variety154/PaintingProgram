//
//  OAuth2TokenStorage.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 02.05.2024.
//

import Foundation

struct OAuth2TokenResponseBody: Decodable {
    let accessToken: String
    let tokenType: String
    let scope: String
    let createdAt: Int
}
