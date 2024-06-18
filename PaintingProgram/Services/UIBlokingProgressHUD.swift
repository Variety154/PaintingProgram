//
//  UIBlokingProgressHUD.swift
//  PaintingProgram
//
//  Created by Varvara Kiseleva on 03.06.2024.
//

import Foundation
import UIKit
import ProgressHUD

final class UIBlokingProgressHUD {
    private static var window: UIWindow? {
        return UIApplication.shared.windows.first
    }
    
    static func show() {
        window?.isUserInteractionEnabled = false
        ProgressHUD.animate()
    }
    
    static func dismiss() {
        window?.isUserInteractionEnabled = true
        ProgressHUD.dismiss()
    }
}
