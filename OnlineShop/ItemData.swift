//
//  ItemData.swift
//  OnlineShop
//
//  Created by Georgii Troshin on 12/20/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import Combine
import SwiftUI

final class ItemData: ObservableObject {
    @Published var showPrimeOnly = false
    @Published var items = itemData
}
