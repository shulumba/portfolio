//
//  BlankView.swift
//  Devote
//
//  Created by Igor Shulumba on 21.11.2024.
//

import SwiftUI

struct BlankView: View {
    var backgroundColor: Color
    var backgorundOpacity: Double
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(backgroundColor)
        .opacity(backgorundOpacity)
        .blendMode(.overlay)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BlankView(backgroundColor: .black, backgorundOpacity: 0.3)
        .background(BacgkroundImageView())
        .background(backgroundGradient.ignoresSafeArea(.all))
    
}
