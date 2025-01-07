//
//  FormRowStaticView.swift
//  Todo App
//
//  Created by Igor Shulumba on 27.12.2024.
//

import SwiftUI

struct FormRowStaticView: View {
    // MARK: Properties
    var icon: String
    var firstText: String
    var secondText: String
    
    // MARK: Body
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
            }
            .frame(width: 36, height: 36, alignment: .center)
            Text(firstText).foregroundColor(.gray)
            Spacer()
            Text(secondText)
        }
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 60)) {
    FormRowStaticView(icon: "gear", firstText: "Application", secondText: "Todo")
        .padding()
}
