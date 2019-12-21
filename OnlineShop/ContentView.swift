//
//  ContentView.swift
//  OnlineShop
//
//  Created by Georgii Troshin on 12/18/19.
//  Copyright © 2019 Georgii Troshin. All rights reserved.
//

import Foundation
import SwiftUI


struct ContentView: View {
    @EnvironmentObject private var itemData: ItemData
    
    var body: some View {
        VStack {
            NavigationView{
                List {
                    Toggle(isOn: $itemData.showPrimeOnly) {
                        Text("Show Prime Only")
                            .font(.caption)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing)
                    }
                    ForEach(itemData.items) { item in
                        if !self.itemData.showPrimeOnly || item.prime {
                            NavigationLink(
                            destination: ItemDetailView(item: item).environmentObject(self.itemData)
                            ) {
                                HStack {
                                    Text("\(item.name) - Price: \(item.price)")
                                    if item.prime {
                                        Image(systemName: "timer")
                                            .imageScale(.large)
                                            .foregroundColor(.green)
                                    } else {
                                        /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                                    }
                                }
                            }
                        }
                    }
                }
                .navigationBarTitle(Text("Shop Items"), displayMode: .inline)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ItemData())
    }
}
