//
//  PaintingProgramUITestsLaunchTests.swift
//  PaintingProgramTests
//
//  Created by Varvara Kiseleva on 23.09.2024.
//

import XCTest

final class PaintingProgramUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
