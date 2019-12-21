//
//  ContentViewObject.swift
//  OnlineShopUITests
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import XCTest

class ContentViewObject: CommonTest {
    private lazy var view = app.otherElements["contentView_view"].firstMatch
    private lazy var primeOnlyToggle = app.switches["primeOnlyToggle"].firstMatch
    func navigationLink(itemName: String) -> XCUIElement {
        let predicate = NSPredicate(format: "identifier BEGINSWITH %@ AND identifier ENDSWITH %@", "navigationLink_", "\(itemName)")
        return app.buttons.element(matching: predicate).firstMatch
    }
        
    @discardableResult
    func isDisplaying() -> ContentViewObject {
        XCTAssert(self.view.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.view) has not been found.")
        return self
    }
    
    @discardableResult
    func filterPrimeOnly() -> ContentViewObject {
        XCTAssert(self.primeOnlyToggle.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.primeOnlyToggle) has not been found.")
        if !self.primeOnlyToggle.isOn! {
            self.primeOnlyToggle.tap()
        }
        return self
    }
    
    @discardableResult
    func selectItem(itemName: String) -> ContentViewObject {
        let item = navigationLink(itemName: itemName)
        XCTAssert(item.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(item) has not been found.")
        item.tap()
        return self
    }
}
