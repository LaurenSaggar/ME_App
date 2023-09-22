//
//  CategoryView.swift
//  ME
//
//  Created by Lauren Saggar on 9/6/23.
//

import SwiftUI

struct CategoryView: View {
    
    // Do I use an environment object here?
    //@EnvironmentObject var modelData: ModelData
    
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
                    .foregroundColor(Color(UIColor.black))
                
                Image(systemName: "chevron.forward")
                    .foregroundColor(Color(UIColor.gray))
                
                Spacer()
                Text("\(Int(category.completion * 100))%")
                    .font(.title2)
                    .foregroundColor(Color(UIColor.black))
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
    
    static var modelData = ModelData()
    
    static var previews: some View {
        CategoryView(category: modelData.categories[2])
    }
}
