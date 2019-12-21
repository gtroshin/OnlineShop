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
            HStack {
                HStack {
                    Text(item.name)
                        .font(.headline)
                    if item.prime {
                        Image(systemName: "timer")
                            .imageScale(.large)
                            .foregroundColor(.green)
                    } else {
                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                    }
                }
                
                Text("Total price: \(item.price)")
            }
            
        }
        .padding()
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(item: ItemData().items[8]).environmentObject(ItemData())
    }
}
