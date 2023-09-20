//
//  ProgressView.swift
//  ME
//
//  Created by Lauren Saggar on 9/6/23.
//

import SwiftUI

struct ProgressView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    //var categories: [Category]
    
    var body: some View {
        VStack {
            Text("Period Management Progress")
                .bold()
                .font(.system(size: 24))
            
            ForEach(modelData.categories) { category in
                CategoryView(category: category)
            }
        }.padding()
    }
}

struct ProgressView_Previews: PreviewProvider {
//    static var my_categories = [
//        Category(id: 1, name: "Period Essentials", completion: 0.80, color: "systemPink", items: [CategoryItem]()),
//        Category(id: 2, name: "Increase Energy", completion: 0.56, color: "orange", items: [CategoryItem]()),
//        Category(id: 3, name: "Relax Body", completion: 0.37, color: "systemMint", items: [CategoryItem]()),
//        Category(id: 4, name: "Manage Pain", completion: 0.70, color: "systemCyan", items: [CategoryItem]()),
//        Category(id: 5, name: "Improve Mood", completion: 0.28, color: "blue", items: [CategoryItem]()),
//        Category(id: 6, name: "Feel Supported", completion: 0.52, color: "purple", items: [CategoryItem]())
//    ]
    
    static var previews: some View {
        ProgressView().environmentObject(ModelData())
        //ProgressView(categories: my_categories)
    }
}
