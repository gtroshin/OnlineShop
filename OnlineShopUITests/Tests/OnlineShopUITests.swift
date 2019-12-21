//
//  OnlineShopUITests.swift
//  OnlineShopUITests
//
//  Created by Georgii Troshin on 12/18/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

class OnlineShopUITests: CommonTest {
    let contentView = ContentViewObject()
    let itemDetailView = ItemDetailViewObject()
    let cartView = CartViewObject()

    func testAddPrimeItemToCart() {
        let item = "AirPods"
        let expectedPrice = "300"
        
        contentView
            .isDisplaying()
            .filterPrimeOnly()
            .selectItem(itemName: item)
        
        itemDetailView
            .isDisplaying()
            .checkPrice(price: expectedPrice)
            .checkIsPrime()
            .buy()
        
        cartView
            .isDisplaying()
            .wasItemAdded(item: item)
            .checkTotalPrice(price: expectedPrice)
    }
}
