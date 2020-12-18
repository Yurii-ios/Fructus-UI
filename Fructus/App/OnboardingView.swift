//
//  OnboardingView.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 18/12/2020.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCard()
            } //: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}