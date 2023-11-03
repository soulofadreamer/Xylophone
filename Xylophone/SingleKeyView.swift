//
//  SingleKeyView.swift
//  Xylophone
//
//  Created by Sunil Sharma on 03/11/23.
//

import SwiftUI

struct PressedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.9 : 1)
            .scaleEffect(configuration.isPressed ? 0.99 : 1.0)
            
    }
}
struct SingleKeyView: View {
    var width: CGFloat
    let vm = PlayViewModel()
    var soundName: String
    var color: Color
    
    var body: some View {
        
        ZStack {
            Button(action: {
                
                vm.playSound(sound: soundName)
                
            }, label: {
                ZStack {
                     RoundedRectangle(cornerRadius: 12)
                        .frame(width: width, height: 90)
                        .foregroundStyle(color)
                   
                    Text(soundName)
                        .font(.title)
                        .foregroundStyle(.white)
                        .bold()
                }
                .transition(.scale(scale: 12).animation(.easeInOut))
            })
            .buttonStyle(PressedButtonStyle())
        }
    }
    
}


#Preview {
    
    SingleKeyView(width: 350, soundName: "A", color: .red)
}
