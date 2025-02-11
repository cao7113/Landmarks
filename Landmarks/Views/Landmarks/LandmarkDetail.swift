//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by ftrj on 2025/2/11.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        // VStack {
        ScrollView {
            // map view
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            // image
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            // info
            VStack(alignment: .leading) {
                // name view of landmark
                
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                // location view of landmark
                HStack {
                    // park
                    Text(landmark.park)
                    
                    // expand to parent's full width
                    Spacer()
                    
                    // state
                    Text(landmark.state)
                    
                } .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                
                
                Divider()
                
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }.padding()
            
            // Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
