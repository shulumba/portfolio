//
//  ContentView.swift
//  Fructus
//
//  Created by Igor Shulumba on 20.10.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    
    @State private var isShowingSettings: Bool = false

    var fruits:[Fruit] = fruitsData
    
    // MARK: BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
