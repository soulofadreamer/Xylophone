//
//  ContentView.swift
//  Xylophone
//
//  Created by Sunil Sharma on 02/11/23.
//

import SwiftUI

struct RootView: View {
    
    var color: [Color] = [.red, .orange, .yellow, .green, Color(red: 0.347, green: 0.337, blue: 0.841), .blue, .purple]
    var soundNames: [String] = ["A", "B", "C", "D", "E", "F", "G"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Xylophone")
                    .font(.title)
                    .bold()
                    
                Spacer()
            }
            
            Spacer()
            
            GeometryReader { geo in
                LazyVGrid(columns: [GridItem()], spacing: 10,content: {
                    ForEach(0..<7) { index in
                        ZStack {
                            
                            SingleKeyView(width: CGFloat(geo.size.width - CGFloat((10 * index))), soundName: soundNames[index], color: color[index])
                            
                        }
                        
                    }
                })
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    RootView()
}
