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
    static let defaultBaseURL = URL(string: "https://api.unsplash.com")!
}

enum WebViewConstants {
    static let unsplashAuthorizeURLString = "https://unsplash.com/oauth/authorize"
}
