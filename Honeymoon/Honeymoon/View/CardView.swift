//
//  CardView.swift
//  Honeymoon
//
//  Created by Igor Shulumba on 31.12.2024.
//

import SwiftUI

struct CardView: View, Identifiable {
    // MARK: Properties
    
    let id = UUID()
    var honeymoon: Destination
    
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12, content: {
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(.white)
                        )
                })
                .frame(minWidth: 280)
                .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 600)) {
    CardView(honeymoon: honeymoonData[0])
}
