//
//  ImagesListTests.swift
//  PaintingProgramTests
//
//  Created by Varvara Kiseleva on 23.09.2024.
//

@testable import PaintingProgram
import XCTest
import PaintingProgram
import Foundation

final class ImagesListTests: XCTestCase {
    func testFetchPhotosNextPage() throws {
        //given
        let service = ImagesListServiceModel()
        let presenter = ImagesListPresenter(imagesListService: service)
        
        //then
        presenter.viewDidLoad()
        
        //when
        XCTAssertEqual(service.photos.count, 1)
    }
    
    func testUpdateTableCalled() throws {
        //given
        let viewController = ImagesListViewControllerSpy()
        let service = ImagesListServiceModel()
        let presenter = ImagesListPresenter(imagesListService: service)
        presenter.view = viewController
        viewController.presenter = presenter
        
        //then
        service.fetchPhotosNextPage()
        presenter.updateTableView()
        
        //when
        XCTAssertTrue(viewController.updateTableCalled)
    }
    
    func testPresenterUpdateTableView() throws {
        //given
        let viewController = ImagesListViewController()
        let presenter = ImagesListPresenterSpy()
        viewController.presenter = presenter
        presenter.view = viewController
        
        //then
        NotificationCenter.default.post(
            name: ImagesListService.didChangeNotification,
            object: self,
            userInfo: [:])
        
        //when
        XCTAssertTrue(presenter.updateTableCalled)
    }
    
    func testWillDisplay() throws {
        //given
        let service = ImagesListServiceModel()
        let presenter = ImagesListPresenter(imagesListService: service)
        
        //then
        service.fetchPhotosNextPage()
        presenter.updateTableView()
        presenter.willDisplay(indexPath: 0)
        
        //when
        XCTAssertEqual(service.photos.count, 2)
    }
    
    func testViewDidLoadCalled() throws {
        //given
        let viewController = ImagesListViewController()
        let presenter = ImagesListPresenterSpy()
        viewController.presenter = presenter
        presenter.view = viewController
        
        //then
        _ = viewController.view
        
        //when
        XCTAssertTrue(presenter.viewDidLoadCalled)
    }
}
