//
//  ContentView.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 18/12/2020.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    // create var that will store all of the fruits
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        // create NavigationBar
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item  in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                        
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: NavigationView
        // for iPad
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
        
    }
}
