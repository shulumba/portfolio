//
//  FormRowLinkView.swift
//  Todo App
//
//  Created by Igor Shulumba on 27.12.2024.
//

import SwiftUI

struct FormRowLinkView: View {
    // MARK: Properties
    
    var icon: String
    var color: Color
    var text: String
    var link: String
    
    // MARK: Body
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(color)
                Image(systemName: icon)
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            .frame(width: 36, height: 36, alignment: .center)
            
            Text(text).foregroundColor(.gray)
            Spacer()
            Button(action: {
                guard let url = URL(string: self.link),
                      UIApplication.shared.canOpenURL(url) else {
                    return
                }

                UIApplication.shared.open(url as URL)
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
            }
            )
            .accentColor(Color(.systemGray2))
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    FormRowLinkView(icon: "globe", color: .pink, text: "Website", link: "https://swiftuimasterclass.com")
        .padding()
}
