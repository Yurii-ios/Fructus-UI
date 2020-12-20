//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 20/12/2020.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    
    @State private var isAnimatingImage: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            // add a new gradient color as an individual view for the bottom layer of the stack
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            //  IMAGE
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 8, x: 6, y: 8)
                // for iPad scren
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        // ANIMATION
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
                
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
