//
//  Constants.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 26.04.2024.
//

import Foundation

let AccessKey = "rkn9ITDlCqP-rQYENY0zREg7p5qGcZN93QnzhAuRyUg"
let SecretKey = "6xQ-n4BWOMZUvGDuo5Bdx0zrBMzVfDl-0RLHTpNJzro"
let RedirectURI = "urn:ietf:wg:oauth:2.0:oob"
let AccessScope = "public+read_user+write_likes"
var DefaultBaseURL: URL {
    guard let url = URL(string: "https://api.unsplash.com") else {
        preconditionFailure("Не удалось получить доступ к unsplash.com")
    }
    return url
}

