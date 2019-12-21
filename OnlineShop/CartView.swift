//
//  CartView.swift
//  OnlineShop
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var itemData: ItemData
    var item: Item
    
    var body: some View {
        VStack {
            Text("Cart")
                .font(.largeTitle)
                .accessibility(identifier: "cart_view")
            Spacer()
            HStack {
                HStack {
                    Text(item.name)
                        .font(.headline)
                        .accessibility(identifier: "itemName_\(item.name)")
                    if item.prime {
                        Image(systemName: "timer")
                            .imageScale(.large)
                            .foregroundColor(.green)
                            .accessibility(identifier: "itemPrime_\(item.prime)")
                    } else {
                        EmptyView()
                    }
                }
                HStack {
                    Text("Total price:")
                    Text("\(item.price)")
                        .accessibility(identifier: "itemPrice_\(item.price)")
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(item: ItemData().items[8]).environmentObject(ItemData())
    }
}
