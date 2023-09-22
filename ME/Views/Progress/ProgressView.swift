//
//  ProgressView.swift
//  ME
//
//  Created by Lauren Saggar on 9/6/23.
//

import SwiftUI

struct ProgressView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Period Management Progress")
                    .bold()
                    .font(.system(size: 24))
                
                ForEach(modelData.categories) { category in
                    NavigationLink {
                        CategoryDetailsView(category: category)
                    } label: {
                        CategoryView(category: category)
                    }
                }
            }.padding()
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    
    static var previews: some View {
        ProgressView().environmentObject(ModelData())
        //ProgressView(categories: my_categories)
    }
}
