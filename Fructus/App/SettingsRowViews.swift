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
    var content: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(name).foregroundColor(.gray)
                Spacer()
            Text(content)
            
        }
    }
}

//MARK: - PREVIEW
struct SettingsRowViews_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowViews(name: "Developer", content: "John/ Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
