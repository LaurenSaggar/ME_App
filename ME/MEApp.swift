//
//  MEApp.swift
//  ME
//
//  Created by Lauren Saggar on 9/6/23.
//

import SwiftUI

@main
struct MEApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
