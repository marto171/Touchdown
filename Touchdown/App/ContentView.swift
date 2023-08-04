//
//  ContentView.swift
//  Touchdown
//
//  Created by Martin on 30.07.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            NavigationBarView()
                .padding(.horizontal)
                .padding(.vertical, 10)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    FeaturedTabView()
                        .frame(minHeight: 256)
                        .padding(.vertical, 20)
                    
                    CategoryGridView()
                    TitleView(title: "Helmets")
                    
                    LazyVGrid(columns: gridLayout, spacing: 15) {
                        ForEach(products) { product in
                            ProductItemView(product: product)
                        }
                    }
                    .padding(15)
                    
                    TitleView(title: "Brands")
                    BrandGridView()
                    
                    FooterView()
                        .padding()
                }
            }
        }
        .background(colorBackground.ignoresSafeArea(.all, edges: .all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
