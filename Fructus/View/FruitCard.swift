//
//  FruitCard.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 18/12/2020.
//

import SwiftUI

struct FruitCard: View {
    //MARK: - Properties
    
    //MARK: - Body

    
    var body: some View {
        // create Vstack
        ZStack {
            VStack(spacing: 20) {
                //Fruit: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8,x: 6,y: 8)
                
                // Fruit: Title
                Text("Blueberry")
                //Fruit: Headline
                //Button: Start
            } //: VSTACK
        } //: ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

//MARK: - Preview
struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard()
            // screen size preview device
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
