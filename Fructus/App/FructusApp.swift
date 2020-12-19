//
//  FructusApp.swift
//  Fructus
//
//  Created by Yurii Sameliuk on 18/12/2020.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            // First start app - OnboardingView()
            if isOnboarding {
            OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
