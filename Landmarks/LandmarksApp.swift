//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by ftrj on 2025/2/11.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
