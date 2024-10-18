//
//  ContentView.swift
//  Restart
//
//  Created by Igor Shulumba on 16.10.2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        VStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomveView()
            }
        }
    }
}

#Preview {
    ContentView()
}
