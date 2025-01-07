//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Igor Shulumba on 03.01.2025.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}
