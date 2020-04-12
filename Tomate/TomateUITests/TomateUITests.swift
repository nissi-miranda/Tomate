//
//  TomateUITests.swift
//  TomateUITests
//
//  Created by Nissi Vieira Miranda on 05/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import XCTest

class TomateUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }

    override func tearDown() {
    }

    func testUIOne() {
        let app = XCUIApplication()
        app.launch()
    }

    func testUITwo() {
        let app = XCUIApplication()
        app.launch()
    }
    
    func testUIThree() {
        let app = XCUIApplication()
        app.launch()
    }
}
