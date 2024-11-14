//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Igor Shulumba on 06.11.2024.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
