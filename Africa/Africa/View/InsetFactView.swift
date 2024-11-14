//
//  InsetFactView.swift
//  Africa
//
//  Created by Igor Shulumba on 28.10.2024.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: Tabs
        } //: Box
        .tabViewStyle(PageTabViewStyle())
        .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetFactView(animal: animals[0])
        .padding()
}
