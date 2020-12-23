//
//  SettingsRowViews.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 23/12/2020.
//

import SwiftUI

struct SettingsRowViews: View {
    //MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            // add diverer to all labels in settings view
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                    Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    
                } else {
                    EmptyView()
                }
                
            }
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowViews(name: "Developer", content: "John/ Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowViews(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
