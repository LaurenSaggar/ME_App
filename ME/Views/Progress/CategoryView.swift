//
//  CategoryView.swift
//  ME
//
//  Created by Lauren Saggar on 9/6/23.
//

import SwiftUI

struct CategoryView: View {
    
    var category: Category
    //var color = UIColor.red
//    var category_name: String
//    var category_completion: Double
//    var category_color: Color
    
    var colors = [
          "systemMint": UIColor.systemMint,
          "orange": UIColor.orange,
          "systemCyan": UIColor.systemCyan,
          "systemPink": UIColor.systemPink,
          "blue": UIColor.blue,
          "purple": UIColor.purple,
          "systemTeal": UIColor.systemTeal
      ]
    
    var body: some View {
        
        VStack {
            HStack {
                Text(category.name)
                    .font(.title2)
                Spacer()
                Text("\(Int(category.completion * 100))%")
                    .font(.title2)
            }
            
            GeometryReader { geometry in
                // ZStacks used for shapes on top on one another
                ZStack (alignment: .leading) {
                    
                    // Full progress bar (lighter color)
                    Rectangle().frame(width: geometry.size.width, height: 35)
                        .opacity(0.3)
                        .foregroundColor(Color(colors[category.color] ?? UIColor.black))
                        .cornerRadius(45.0)
                    
                    // Completed progress % of progress bar (darker color)
                    Rectangle().frame(width: geometry.size.width * category.completion, height: 35)
                        .opacity(0.7)
                        .foregroundColor(Color(colors[category.color] ?? UIColor.black))
                        .cornerRadius(45.0)
                }
            }
        }.padding()
    }
}

struct CategoryView_Previews: PreviewProvider {
    
    static var categories = ModelData().categories
    
//    static var preview_category = Category(id: 0, name: "Prepare Essentials", completion: 0.8, color: "systemTeal", items: [CategoryItem]())
    
    static var previews: some View {
        CategoryView(category: categories[2])
//        CategoryView(category_name: "Prepare Essentials", category_completion: 0.8, category_color: Color(UIColor.systemTeal))
    }
}
