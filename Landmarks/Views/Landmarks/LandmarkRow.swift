//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by ftrj on 2025/2/11.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)


            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill").foregroundStyle(.yellow)
                     }
        }
    }
}

#Preview {
    Group {
        let landmarks = ModelData().landmarks
         return Group {
             LandmarkRow(landmark: landmarks[0])
             LandmarkRow(landmark: landmarks[1])
             LandmarkRow(landmark: landmarks[2])
         }
    }
}

// Version1
//#Preview("Turtle Rock") {
//    LandmarkRow(landmark: landmarks[0])
//}
//
//
//#Preview("Salmon") {
//    LandmarkRow(landmark: landmarks[1])
//}
