//
//  CartViewObject.swift
//  OnlineShopUITests
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import XCTest

class CartViewObject: CommonTest {
    private lazy var view = app.staticTexts["cart_view"].firstMatch
    func item(itemName: String) -> XCUIElement {
        let predicate = NSPredicate(format: "identifier BEGINSWITH %@ AND identifier ENDSWITH %@", "itemName_", "\(itemName)")
        return app.staticTexts.element(matching: predicate).firstMatch
    }
    func price(expectedPrice: String) -> XCUIElement {
        let predicate = NSPredicate(format: "identifier BEGINSWITH %@ AND identifier ENDSWITH %@", "itemPrice_", "\(expectedPrice)")
        return app.staticTexts.element(matching: predicate).firstMatch
    }
        
    @discardableResult
    func isDisplaying() -> CartViewObject {
        XCTAssert(self.view.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.view) has not been found.")
        return self
    }
    
    @discardableResult
    func wasItemAdded(item: String) -> CartViewObject {
        XCTAssert(self.item(itemName: item).waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.item(itemName: item)) has not been found.")
        return self
    }
    
    @discardableResult
    func checkTotalPrice(price: String) -> CartViewObject {
        XCTAssert(self.price(expectedPrice: price).waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.price(expectedPrice: price)) has not been found.")
        return self
    }
}
