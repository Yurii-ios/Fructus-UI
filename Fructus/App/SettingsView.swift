//
//  SettingsView.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 21/12/2020.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            
                    ) {
                        Divider().padding(.vertical)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9.0)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                                
                        }
                    }
                    
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                       SettingsRowViews(name: "Developer", content: "XXX XXX", linkLabel: nil, linkDestination: nil)
                        SettingsRowViews(name: "Disigner", content: "XXX XXX", linkLabel: nil, linkDestination: nil)
                        SettingsRowViews(name: "Compatibility", content: "iOS 14", linkLabel: nil, linkDestination: nil)
                        SettingsRowViews(name: "Website", content: nil, linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowViews(name: "Twitter", content: nil, linkLabel: "@XXX", linkDestination: "twitter.com/XXX")
                        SettingsRowViews(name: "SwiftUI", content: "2.0", linkLabel: nil, linkDestination: nil)
                        SettingsRowViews(name: "Version", content: "1.1.0", linkLabel: nil, linkDestination: nil)
                        
                    } //: GroupBox
                    
                    
                } //: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11")
    }
}
