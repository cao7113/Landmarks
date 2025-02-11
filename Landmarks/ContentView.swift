//
//  ContentView.swift
//  Landmarks
//
//  Created by ftrj on 2025/2/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // map view
            MapView()
              .frame(height: 300)
            // image
            CircleImage()
                .offset(y: -130)
                               .padding(.bottom, -130)
            // info
            VStack(alignment: .leading) {
                // name view of landmark
                Text("Turtle Rock")
                    .font(.title)
                // location view of landmark
                HStack {
                    // park
                    Text("Joshua Tree National Park")
                    
                    // expand to parent's full width
                    Spacer()
                    
                    // state
                    Text("California")
                    
                } .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                
                
                Divider()


                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            
            Spacer()
        }
            
    }
}

#Preview {
    ContentView()
}
