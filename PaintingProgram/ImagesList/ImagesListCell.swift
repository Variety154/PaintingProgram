//  ImagesListCell.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 16.03.2024.
//

import Foundation
import UIKit

final class ImagesListCell: UITableViewCell {
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    
    static let reusedIdentifier = "ImagesListCell"
}
