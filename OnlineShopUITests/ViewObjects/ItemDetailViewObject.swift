//
//  ItemDetailViewObject.swift
//  OnlineShopUITests
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import XCTest

class ItemDetailViewObject: CommonTest {
    private lazy var addToCartButton = app.buttons["addToCartButton"].firstMatch
    private lazy var isPrimeLabel = app.images["itemPrime_true"].firstMatch
    func price(expectedPrice: String) -> XCUIElement {
        let predicate = NSPredicate(format: "identifier BEGINSWITH %@ AND identifier ENDSWITH %@", "itemPrice_", "\(expectedPrice)")
        return app.staticTexts.element(matching: predicate).firstMatch
    }
        
    @discardableResult
    func isDisplaying() -> ItemDetailViewObject {
        XCTAssert(self.addToCartButton.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.addToCartButton) has not been found.")
        return self
    }
    
    @discardableResult
    func checkPrice(price: String) -> ItemDetailViewObject {
        XCTAssert(self.price(expectedPrice: price).waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.price(expectedPrice: price)) has not been found.")
        return self
    }
    
    @discardableResult
    func checkIsPrime() -> ItemDetailViewObject {
        XCTAssert(self.isPrimeLabel.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.isPrimeLabel) has not been found.")
        return self
    }
    
    @discardableResult
    func buy() -> ItemDetailViewObject {
        XCTAssert(self.addToCartButton.waitForExistence(timeout: DefaultTimeout.existence.rawValue), "Element \(self.addToCartButton) has not been found.")
        self.addToCartButton.tap()
        return self
    }
}
