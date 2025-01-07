//
//  ThemeSettings.swift
//  Todo App
//
//  Created by Igor Shulumba on 30.12.2024.
//

import SwiftUI
import UIKit

// MARK: Theme class

class ThemeSettings: ObservableObject {
    @Published var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet {
            UserDefaults.standard.setValue(self.themeSettings, forKey: "Theme")
        }
    }    
}
