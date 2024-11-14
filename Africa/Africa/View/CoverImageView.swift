//
//  CoverImageView.swift
//  Africa
//
//  Created by Igor Shulumba on 27.10.2024.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: Properties
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: Body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

// MARK: Preview
#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
