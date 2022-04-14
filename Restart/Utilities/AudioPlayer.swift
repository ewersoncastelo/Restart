//
//  AudioPlayer.swift
//  Restart
//
//  Created by Ewerson on 13/04/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
	if let path = Bundle.main.path(forResource: sound, ofType: type){
		do {
			let url: URL = URL(fileURLWithPath: path)
			audioPlayer = try AVAudioPlayer(contentsOf: url)
			audioPlayer?.play()
		} catch {
			print("Não foi possível executar o arquivo de áudio.")
		}
	}
}
