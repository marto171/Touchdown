//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Martin on 4.08.23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding()
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(self.shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCardToDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: self.shop.selectedProduct?.red ?? sampleProduct.red,
                green: self.shop.selectedProduct?.green ?? sampleProduct.green,
                blue: self.shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
