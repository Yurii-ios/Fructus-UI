//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 20/12/2020.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
   
    //MARK: - BODY
    var body: some View {
        NavigationView {
           // add vertical ScrollView inside navigation
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20 ) {
                    //HEADER
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //DESCRIPTION
                        
                        // LINK
             
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    // centralize on the screen iPan screen
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
            } //: SCROLL
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
