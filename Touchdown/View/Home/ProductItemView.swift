//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Martin on 30.07.23.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            ZStack {
                Image(self.product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: self.product.red, green: self.product.green, blue: self.product.blue))
            .cornerRadius(12)
            
            Text(self.product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(self.product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
