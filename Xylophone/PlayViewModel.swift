//
//  PlayViewModel.swift
//  Xylophone
//
//  Created by Sunil Sharma on 03/11/23.
//

import Foundation

import AVKit

class PlayViewModel {
    
    var player: AVAudioPlayer?
    
    func playSound(sound: String) {
        
        guard let url = Bundle.main.url(forResource: sound, withExtension: "wav") else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            
            player?.play()
            
        } catch let error {
            print("Error Playing Sound. \(error.localizedDescription)")
        }
    }
    
}
