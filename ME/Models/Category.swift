//
//  Category.swift
//  ME
//
//  Created by Lauren Saggar on 9/11/23.
//

import Foundation
import SwiftUI

struct CategoryItem: Hashable, Codable, Identifiable {
    var id: Int
    var categoryName: String
    var itemName: String
    var isChecked: Bool
}

struct Category: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var completion: Double
    var color: String
    var items: [CategoryItem]
}
