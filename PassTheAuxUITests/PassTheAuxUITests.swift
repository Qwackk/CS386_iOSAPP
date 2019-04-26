//
//  PassTheAuxUITests.swift
//  PassTheAuxUITests
//
//  Copyright © 2019 Nate Zeleny. All rights reserved.
//

import XCTest

class PassTheAuxUITests: XCTestCase {
    var app: XCUIApplication!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        app = XCUIApplication()
        
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testJoinSessionButton() {
        // Use recording to get started writing UI tests.
                // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let joinSessionButton = XCUIApplication().buttons["Join Session"]
        joinSessionButton.tap()
        joinSessionButton.tap()
        
        
        XCTAssert(app.buttons["Queue Song"].exists)
                        
    }
    
    /*
     Acceptence test for making sure the create session route
     stays functional and does not break. Clicks the
     "Create Session" button, the continue button after seeing
     the session created code, and then makes sure we are at
     the main page by checking if the "Queue Song" button exists.
     */
    func testCreateSessionButton() {
        
        let app = XCUIApplication()
        app.buttons["Create Session"].tap()
        
        app.buttons["Continue"].tap()
        
        XCTAssert(app.buttons["Queue Song"].exists)
    }
    /*
     Acceptence test for making sure the copy to clipboard
     button doesn't break by clicking the button and copying
     the test string, then checking the clipboard to see if
     the string currently in the clipboard is the same as the
     test string.
     */
    func testeCopyCodeButton() {
        let sessionCode = "<CREATED CODE HERE>"
        let app = XCUIApplication()
        app.buttons["Create Session"].tap()
        app.buttons["Copy code to clipboard"].tap()
        let clipBoard = UIPasteboard.general.string
        XCTAssert(clipBoard == sessionCode)
    }

}
