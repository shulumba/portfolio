//
//  AnimaGridItemView.swift
//  Africa
//
//  Created by Igor Shulumba on 04.11.2024.
//

import SwiftUI

struct AnimaGridItemView: View {
    // MARK: PROPERTIES
    
    let animal: Animal
    
    // MARK: BODY
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AnimaGridItemView(animal: animals[0])
        .padding()
}
