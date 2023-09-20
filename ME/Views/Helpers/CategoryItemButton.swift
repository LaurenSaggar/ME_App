//
//  CategoryItemButton.swift
//  ME
//
//  Created by Lauren Saggar on 9/17/23.
//

import SwiftUI

struct CategoryItemButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Item Checked", systemImage: isSet ? "checkmark.square.fill" : "square")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? Color(UIColor.systemGreen) : .gray)
        }
    }
}

struct CategoryItemButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemButton(isSet: .constant(true))
    }
}
