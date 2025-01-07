//
//  FooterView.swift
//  Honeymoon
//
//  Created by Igor Shulumba on 31.12.2024.
//

import SwiftUI

struct FooterView: View {
    // MARK: Properties
    @Binding var showBookingAlert: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            }, label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(.pink)
                    .background(
                        Capsule()
                            .stroke(.pink, lineWidth: 2)
                    )
            })
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))
        }
        .padding()
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    FooterView(showBookingAlert: .constant(false))
       
}
