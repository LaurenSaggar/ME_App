//
//  ModelData.swift
//  ME
//
//  Created by Lauren Saggar on 9/17/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var categories: [Category] = [
        Category(id: 1, name: "Period Essentials", completion: 0.80, color: "systemPink", items: [CategoryItem]()),
        Category(id: 2, name: "Increase Energy", completion: 0.56, color: "orange", items: [CategoryItem]()),
        Category(id: 3, name: "Relax Body", completion: 0.37, color: "systemMint", items: [
            CategoryItem(id: 1, categoryName: "Relax Body", itemName: "Rest", isChecked: true),
            CategoryItem(id: 2, categoryName: "Relax Body", itemName: "Take a hot bath", isChecked: false),
            CategoryItem(id: 3, categoryName: "Relax Body", itemName: "Drink warm tea", isChecked: false)]),
        Category(id: 4, name: "Manage Pain", completion: 0.70, color: "systemCyan", items: [CategoryItem]()),
        Category(id: 5, name: "Improve Mood", completion: 0.28, color: "blue", items: [CategoryItem]()),
        Category(id: 6, name: "Feel Supported", completion: 0.52, color: "purple", items: [CategoryItem]())
    ]
}
