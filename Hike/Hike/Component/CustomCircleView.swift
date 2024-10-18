//
//  CustomCircleView.swift
//  Hike
//
//  Created by Igor Shulumba on 14.10.2024.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimageGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight],
                        startPoint: isAnimageGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimageGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear() {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimageGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
