//
//  ContentView.swift
//  ME
//
//  Created by Lauren Saggar on 9/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProgressView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
