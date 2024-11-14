//
//  CreditsView.swift
//  Africa
//
//  Created by Igor Shulumba on 05.11.2024.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright @ Shulumba Igor
    All right reserved
    Better Apps Less Code
    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
    
}

#Preview(traits: .sizeThatFitsLayout) {
    CreditsView()
        .padding()
}
