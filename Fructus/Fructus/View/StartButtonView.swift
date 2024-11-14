//
//  StartButtonView.swift
//  Fructus
//
//  Created by Igor Shulumba on 20.10.2024.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES

    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: BODY
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                
            )
        }
        .accentColor(.white)
    }
}

// MARK: PREVIEW

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
