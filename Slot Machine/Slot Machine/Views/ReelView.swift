//
//  ReelView.swift
//  Slot Machine
//
//  Created by Igor Shulumba on 17.12.2024.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

#Preview(traits: .fixedLayout(width: 220, height: 220)) {
    ReelView()
}
