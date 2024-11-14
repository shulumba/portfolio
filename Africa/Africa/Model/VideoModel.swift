//
//  VideoModel.swift
//  Africa
//
//  Created by Igor Shulumba on 28.10.2024.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
