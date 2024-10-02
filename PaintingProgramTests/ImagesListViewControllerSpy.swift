//
//  ImagesListViewControllerSpy.swift
//  PaintingProgramTests
//
//  Created by Varvara Kiseleva on 02.10.2024.
//

@testable import PaintingProgram
import XCTest
import PaintingProgram
import Foundation

final class ImagesListViewControllerSpy: ImagesListViewControllerProtocol {
    func showUIBlockingProgressHUD() { }
    
    func dismissUIBlockingProgressHUD() { }
    
    var presenter: ImagesListPresenterProtocol?
    var updateTableCalled = false
    
    func showAlert(error: Error) { }
    
    func updateTable(oldCount: Int, newCount: Int) {
        updateTableCalled = true
    }
}
