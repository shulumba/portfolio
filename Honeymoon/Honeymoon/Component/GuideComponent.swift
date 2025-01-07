//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by Igor Shulumba on 01.01.2025.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: Properties
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(.pink)
            
            VStack(alignment: .leading, spacing: 4, content: {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                    Spacer()
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .foregroundColor(.pink)
                }
                Divider().padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    GuideComponent(title: "Title", 
                   subtitle: "Swipe right",
                   description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence. ",
                   icon: "heart.circle")
}
