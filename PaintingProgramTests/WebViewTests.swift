//
//  PaintingProgramTests.swift
//  PaintingProgramTests
//
//  Created by Varvara Kiseleva on 23.09.2024.
//

@testable import PaintingProgram
import XCTest
import PaintingProgram
import Foundation

final class WebViewPresenterSpy: WebViewPresenterProtocol {
    var view: WebViewViewControllerProtocol?
    var viewDidLoadCalled: Bool = false
    
    func viewDidLoad() {
        viewDidLoadCalled = true
    }
    func didUpdateProgressValue(_ newValue: Double) { }
    func code(from url: URL) -> String? { return nil }
}

final class WebViewViewControllerSpy: WebViewViewControllerProtocol {
    var presenter: PaintingProgram.WebViewPresenterProtocol?
    var loadRequestCalled: Bool = false
    
    func load(request: URLRequest) {
        loadRequestCalled = true
    }
    func setProgressValue(_ newValue: Float) { }
    func setProgressHidden(_ isHidden: Bool) { }
}


final class WebViewTests: XCTestCase {
    func testViewControllerCallsViewDidLoad() {
        
        let viewController = WebViewViewController()
        let presenter = WebViewPresenterSpy()
        
        viewController.presenter = presenter
        presenter.view = viewController
        
        _ = viewController.view
     
        XCTAssertTrue(presenter.viewDidLoadCalled)
    }
    
    func testPresenterCallsLoadRequest() {
        
        let viewController = WebViewViewControllerSpy()
        let presenter = WebViewPresenter(authHelper: AuthHelper())
        
        viewController.presenter = presenter
        presenter.view = viewController
        
        presenter.viewDidLoad()
        
        XCTAssertTrue(viewController.loadRequestCalled)
    }
    
    func testProgressVisibleWhenLessThenOne() {
        
        let presenter = WebViewPresenter(authHelper: AuthHelper())
        let progress: Float = 0.6
        
        let shouldHideProgress = presenter.shouldHideProgress(for: progress)
        
        XCTAssertFalse(shouldHideProgress)
    }
    
    func testProgressVisibleWhenOne() {
        
        let presenter = WebViewPresenter(authHelper: AuthHelper())
        let progress: Float = 1
        
        let shouldHideProgress = presenter.shouldHideProgress(for: progress)
        
        XCTAssertTrue(shouldHideProgress)
    }
    
    func testAuthHelperAuthURL() {
        
        let configuration = AuthConfiguration.standard
        let authHelper = AuthHelper(configuration: configuration)
        
        let url = authHelper.authURL()
        let urlString = url!.absoluteString
        
        XCTAssertTrue(urlString.contains(configuration.accessKey))
        XCTAssertTrue(urlString.contains(configuration.accessScope))
        XCTAssertTrue(urlString.contains(configuration.authURLString))
        XCTAssertTrue(urlString.contains(configuration.redirectURI))
        XCTAssertTrue(urlString.contains("code"))
    }
    
    func testCodeFromURL() {
        
        let authHelper = AuthHelper()
        var urlComponents = URLComponents(string: "https://unsplash.com/oauth/authorize/native")!
        urlComponents.queryItems = [URLQueryItem(name: "code", value: "test code")]
        let url = urlComponents.url!
        
        let code = authHelper.code(from: url)
        
        XCTAssertEqual(code, "test code")
    }
}

