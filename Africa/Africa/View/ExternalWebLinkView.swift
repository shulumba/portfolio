//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Igor Shulumba on 28.10.2024.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: Properties
    
    let animal: Animal
    
    // MARK: Body
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
            }
        } //: Box
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ExternalWebLinkView(animal: animals[0])
        .padding()
}
