//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Igor Shulumba on 31.12.2024.
//

import SwiftUI

struct HeaderView: View {
    // MARK: Properties
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Button {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(.primary)

            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        }
        .padding()
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    HeaderView(
        showGuideView: .constant(false),
        showInfoView: .constant(false)
    )
}
