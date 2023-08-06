//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Martin on 4.08.23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    @State private var counter: Int = 0
    @State private var liked: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                feedback.impactOccurred()
                if self.counter > 0 {
                    self.counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }

            Text("\(self.counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                if self.counter < 10 {
                    self.counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()
            
            Button {
                feedback.impactOccurred()
                self.liked.toggle()
            } label: {
                Image(systemName: "heart\(self.liked ? ".fill" : "")")
                    .foregroundColor(.pink)
            }

        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
