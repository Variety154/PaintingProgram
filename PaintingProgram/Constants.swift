//
//  Constants.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 26.04.2024.
//

import Foundation

enum Constants {
    static let accessKey = "rkn9ITDlCqP-rQYENY0zREg7p5qGcZN93QnzhAuRyUg"
    static let secretKey = "6xQ-n4BWOMZUvGDuo5Bdx0zrBMzVfDl-0RLHTpNJzro"
    static let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let accessScope = "public+read_user+write_likes"
    static let grandType: String = "authorization_code"
    static let defaultBaseURL: URL = {
        if let url = URL(string: "https://api.unsplash.com") {
            return url
        } else {
            fatalError("Invalid drfaultBaseURL: https://api.unsplash.com")
        }
    }()
}
