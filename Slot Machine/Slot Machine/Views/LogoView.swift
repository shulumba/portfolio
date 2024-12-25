//
//  LogoView.swift
//  Slot Machine
//
//  Created by Igor Shulumba on 16.12.2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256, idealWidth: 300, maxWidth: 320, minHeight: 112, idealHeight: 130, maxHeight: 140, alignment: .center)
           .padding(.horizontal)
            .layoutPriority(0)
            .modifier(ShadowModifier())
    }
}

#Preview {
    LogoView()
}
