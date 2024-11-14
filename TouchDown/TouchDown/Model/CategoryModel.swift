//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Igor Shulumba on 13.11.2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
