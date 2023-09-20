//
//  CategoryDetailsView.swift
//  ME
//
//  Created by Lauren Saggar on 9/17/23.
//

import SwiftUI

struct CategoryDetailsView: View {
    // Figure out how to use Binding variables / state variable
    @EnvironmentObject var modelData: ModelData
    
    var category: Category
    
     // Find the category of interest by comparing input data (category) to model data ($0); ! overrides optional
    var categoryIndex: Int {
        modelData.categories.firstIndex(where: {$0.id == category.id})!
    }
    
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
        VStack (alignment: .leading) {
            
            HStack {
                // Back button
                Button {
                    
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color(UIColor.gray))
                }
                
                // Category Goals title
                Text(category.name)
                    .bold()
                    .font(.system(size: 26))
                    .foregroundColor(Color(colors[category.color] ?? UIColor.black))
                
                Spacer()
                
                // Set button
                Button("Set") {
                    print("Button tapped")
                }.foregroundColor(Color(UIColor.systemGreen))
                    .bold()
                    .font(.system(size: 20))
                
            }.padding(.bottom)
            
            // Items question and category items
            VStack (alignment: .leading) {
                
                Text("Which of the below will help you manage your period needs?\n")
                    .font(.system(size: 20))
                
//                ForEach(category.items, id: \.self) { item in
//                    HStack {
//                        Image(systemName: item.isChecked ? "checkmark.square.fill" : "square")
//                        Text("\(item.itemName)")
//                    }.foregroundColor(Color(colors[category.color] ?? UIColor.black))
//                    Text("")
//                }.font(.system(size: 24))
                
                ForEach($modelData.categories[categoryIndex].items, id: \.self) { $item in
                    HStack {
                        CategoryItemButton(isSet: $item.isChecked)
    
                        Text("\(item.itemName)")
                            .foregroundColor(Color(colors[category.color] ?? UIColor.black))
                    }
                    Text("")
                }.font(.system(size: 24))
    
            }
            
            Spacer()
            
        }.padding()
    }
}

struct CategoryDetailsView_Previews: PreviewProvider {
    
    static let modelData = ModelData()
//    static var previewCategory = Category(id: 3, name: "Relax Body", completion: 0.37, color: "systemMint", items: [
//        CategoryItem(id: 1, categoryName: "Relax Body", itemName: "Rest", isChecked: false),
//        CategoryItem(id: 2, categoryName: "Relax Body", itemName: "Take a hot bath", isChecked: false),
//        CategoryItem(id: 3, categoryName: "Relax Body", itemName: "Drink warm tea", isChecked: false)])
    
    static var previews: some View {
        CategoryDetailsView(category: modelData.categories[2])
            .environmentObject(modelData)
    }
}
