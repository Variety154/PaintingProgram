//
//  ImagesListPresenterSpy.swift
//  PaintingProgramTests
//
//  Created by Varvara Kiseleva on 02.10.2024.
//

@testable import PaintingProgram
import XCTest
import PaintingProgram
import Foundation

final class ImagesListPresenterSpy: ImagesListPresenterProtocol {

    var view: ImagesListViewControllerProtocol?
    var updateTableCalled = false
    var willDisplayCalled = false
    var viewDidLoadCalled = false
    
    func formatDate(_ date: Date) -> String { return "" }
    
    func updateTableView() {
        updateTableCalled = true
    }
    
    func didLikeButtonTapped(_ index: Int, _ cell: ImagesListCell) { }
    
    func getPhotoAtIndex(_ index: Int) -> Photo? { return nil }
    
    func willDisplay(indexPath: Int) {
        willDisplayCalled = true
    }
    
    func getPhotosCount() -> Int { return 1 }
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
}
