//
//  FruitCard.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 18/12/2020.
//

import SwiftUI

struct FruitCard: View {
    //MARK: - Properties
    var fruit: Fruit
    
    @State private var isAnamating: Bool = false
    
    //MARK: - Body
    var body: some View {
        // create Vstack
        ZStack {
            VStack(spacing: 20) {
                Text("hello")
                    .font(.largeTitle)
                    .bold()
                    .accentColor(.white)
                //Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8,x: 6,y: 8)
                // scale anomations image
                    .scaleEffect(isAnamating ? 1.0 : 0.6)
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //Button: Start
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        // Animation
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnamating = true
            }
        }
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - Preview
struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard(fruit: fruitsData[5])
            // screen size preview device
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
