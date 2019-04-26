//
//  PassTheAuxTests.swift
//  PassTheAuxTests
//
//  Copyright © 2019 Nate Zeleny. All rights reserved.
//

import XCTest
@testable import PassTheAux

class PassTheAuxTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    /*
     Acceptence test for making sure the copy to clipboard
     button doesn't break by clicking the button and copying
     the test string, then checking the clipboard to see if
     the string currently in the clipboard is the same as the
     test string.
     */
    func testeCopyCodeButton() {
        // Default session code
        let sessionCode = "<CREATED CODE HERE>"
        // Create a pasteboard
        let pasteboard = UIPasteboard.general
        let clipBoard = UIPasteboard.general.string
        // Set our pasteboard to what is in our clipboard
        pasteboard.string = clipBoard
        
        XCTAssert(clipBoard == sessionCode)
    }
}
