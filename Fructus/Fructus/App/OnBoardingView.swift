//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Igor Shulumba on 21.10.2024.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: BODY

    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEW

#Preview {
    OnBoardingView(fruits: fruitsData)
        .previewDevice("iPhone 11 Pro")
}
