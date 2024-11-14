//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Igor Shulumba on 13.11.2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }
            })
            .frame(height: 200)
            .padding(15)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BrandGridView()
        .background(colorBackground)
}
