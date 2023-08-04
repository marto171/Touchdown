//
//  AddToCardToDetailView.swift
//  Touchdown
//
//  Created by Martin on 4.08.23.
//

import SwiftUI

struct AddToCardToDetailView: View {
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to card".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

struct AddToCardToDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardToDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
