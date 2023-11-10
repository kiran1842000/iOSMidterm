//
//  Kiran_PadinhareKunnoth_MT_8940891UITestsLaunchTests.swift
//  Kiran_PadinhareKunnoth_MT_8940891UITests
//
//  Created by IS on 2023-11-03.
//

import XCTest

final class Kiran_PadinhareKunnoth_MT_8940891UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
