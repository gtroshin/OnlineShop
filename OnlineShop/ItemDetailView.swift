//
//  ItemDetailView.swift
//  OnlineShop
//
//  Created by Georgii Troshin on 12/21/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var itemData: ItemData
    @State private var showCart = false
    var item: Item
    
    var body: some View {
        VStack {
            Spacer()
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
            Divider()
            Text(item.description)
                .font(.caption)
            Divider()
            HStack {
                Text("Price:")
                Text("\(item.price)")
                    .accessibility(identifier: "itemPrice_\(item.price)")
            }
            Spacer()
            Button(action: {
                self.showCart = true
            }) {
                Text("Add to the cart")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(Color.blue)
                    .cornerRadius(15)
            }
            .accessibility(identifier: "addToCartButton")
            .sheet(isPresented: $showCart) {
                CartView(item: self.item).environmentObject(self.itemData)
            }
        }
        .padding()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(item: ItemData().items[8]).environmentObject(ItemData())
    }
}
