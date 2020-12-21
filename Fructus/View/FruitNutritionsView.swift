//
//  FruitNutritionsView.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 21/12/2020.
//

import SwiftUI

struct FruitNutritionsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    // label name
    let nutrions: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrions.count, id: \.self) { item in
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            }
        } //: GROUPBOX
    }
}

//MARK: - PREVIEW
struct FruitNutritionsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionsView(fruit: fruitsData[0])
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 480))
                .padding()
        
    }
}
