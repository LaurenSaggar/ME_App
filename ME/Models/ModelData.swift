//
//  ModelData.swift
//  ME
//
//  Created by Lauren Saggar on 9/17/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    
    @Published var profile = Profile.default
    
    @Published var categories: [Category] = [
        Category(id: 1, name: "Period Essentials", completion: 0.80, color: "systemPink", items: [
            CategoryItem(id: 1, categoryName: "Period Essentials", itemName: "Get pads", isChecked: true),
            CategoryItem(id: 1, categoryName: "Period Essentials", itemName: "Get tampons", isChecked: true),
            CategoryItem(id: 1, categoryName: "Manage Pain", itemName: "Pack Advil in to-go bag", isChecked: true)]),
        
        Category(id: 2, name: "Increase Energy", completion: 0.56, color: "orange", items: [
            CategoryItem(id: 2, categoryName: "Increase Energy", itemName: "Go for a walk", isChecked: true),
            CategoryItem(id: 2, categoryName: "Increase Energy", itemName: "Avoid trigger foods", isChecked: true)]),
        
        Category(id: 3, name: "Relax Body", completion: 0.37, color: "systemMint", items: [
            CategoryItem(id: 3, categoryName: "Relax Body", itemName: "Rest", isChecked: true),
            CategoryItem(id: 3, categoryName: "Relax Body", itemName: "Take a hot bath", isChecked: true),
            CategoryItem(id: 3, categoryName: "Relax Body", itemName: "Drink warm tea", isChecked: true)]),
        
        Category(id: 4, name: "Manage Pain", completion: 0.70, color: "systemCyan", items: [
            CategoryItem(id: 4, categoryName: "Manage Pain", itemName: "Apply a heating pad", isChecked: true),
            CategoryItem(id: 4, categoryName: "Manage Pain", itemName: "Take advil", isChecked: true)]),
        
        Category(id: 5, name: "Improve Mood", completion: 0.28, color: "blue", items: [
            CategoryItem(id: 5, categoryName: "Improve Mood", itemName: "Eat ice cream", isChecked: true),
            CategoryItem(id: 5, categoryName: "Improve Mood", itemName: "Watch a movie", isChecked: true),
            CategoryItem(id: 5, categoryName: "Improve Mood", itemName: "Have a night in", isChecked: true)]),
        
        Category(id: 6, name: "Feel Supported", completion: 0.52, color: "purple", items: [
            CategoryItem(id: 6, categoryName: "Feel Support", itemName: "Talk to a friend", isChecked: true),
            CategoryItem(id: 6, categoryName: "Feel Support", itemName: "Talk to a partner", isChecked: true),
            CategoryItem(id: 6, categoryName: "Feel Support", itemName: "Mention period to a colleague", isChecked: true),])
    ]
}
