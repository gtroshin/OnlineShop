//
//  Item.swift
//  OnlineShop
//
//  Created by Georgii Troshin on 12/20/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    var id: UUID
    var name: String
    var description: String
    var price: Int
    var prime: Bool
}
