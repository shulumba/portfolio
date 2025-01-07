//
//  PlaySound.swift
//  Honeymoon
//
//  Created by Igor Shulumba on 07.01.2025.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Error: couldn't find and play sound file!")
        }
    }
}
