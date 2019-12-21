//
//  CommonTest.swift
//  OnlineShopUITests
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import XCTest

class CommonTest: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        sleep(1)
    }
    
    override func tearDown() {
        sleep(1)
        app.terminate()
        super.tearDown()
    }
}
