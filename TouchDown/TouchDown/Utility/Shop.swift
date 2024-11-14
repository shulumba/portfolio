//
//  Shop.swift
//  TouchDown
//
//  Created by Igor Shulumba on 14.11.2024.
//

import Foundation


class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
