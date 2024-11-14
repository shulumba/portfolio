//
//  FructusApp.swift
//  Fructus
//
//  Created by Igor Shulumba on 20.10.2024.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
            
        }
    }
}
