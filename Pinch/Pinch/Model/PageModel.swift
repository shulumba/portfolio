//
//  PageModel.swift
//  Pinch
//
//  Created by Igor Shulumba on 19.10.2024.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
