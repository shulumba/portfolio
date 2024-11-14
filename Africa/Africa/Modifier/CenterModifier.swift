//
//  CenterModifier.swift
//  Africa
//
//  Created by Igor Shulumba on 05.11.2024.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
