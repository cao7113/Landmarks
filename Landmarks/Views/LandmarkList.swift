//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ftrj on 2025/2/11.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
             List(landmarks) { landmark in
                 
                 NavigationLink {
                     LandmarkDetail(landmark: landmark)
                           } label: {
                               LandmarkRow(landmark: landmark)
                           }
                 
             }.navigationTitle("Landmarks")
         } detail: {
             Text("Select a Landmark")
         }
        
        // Version 4
        
//        LandmarkRow(landmark: landmark)
        
        // Version 3
//        List(landmarks) { landmark in
//             LandmarkRow(landmark: landmark)
//         }
        
        // Version 2
//        List(landmarks, id: \.id) { landmark in
//            LandmarkRow(landmark: landmark)
//        }
        
        // Version 1
//        List {
//            LandmarkRow(landmark: landmarks[0])
//            LandmarkRow(landmark: landmarks[1])
//        }
    }
}

#Preview {
    LandmarkList()
}
