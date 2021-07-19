//
//  PlaySound.swift
//  Learn by Doing
//
//  Created by mami taniguro on 7/19/21.
//

import Foundation
import AVFoundation

// MARK: - AUDIO PLAYER
var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not find and play the sound file.")
        }
    }
}
