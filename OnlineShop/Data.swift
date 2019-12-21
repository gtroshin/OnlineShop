//
//  Data.swift
//  OnlineShop
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

let itemData: [Item] = load("items.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
