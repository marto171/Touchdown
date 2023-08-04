//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Martin on 30.07.23.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }

            Spacer()
            
            LogoView()
                .opacity(self.isAnimating ? 1 : 0)
                .offset(x: 0, y: self.isAnimating ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isAnimating.toggle()
                    }
                }
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
