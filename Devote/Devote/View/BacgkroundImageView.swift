//
//  BacgkroundImageView.swift
//  Devote
//
//  Created by Igor Shulumba on 21.11.2024.
//

import SwiftUI

struct BacgkroundImageView: View {
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

#Preview {
    BacgkroundImageView()
}
