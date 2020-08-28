//
//  ViewController.swift
//  Xylophone
//
//  Created by Nishant Taneja on 28/08/20.
//  Copyright © 2020 Nishant Taneja. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    @IBAction func keyPressed(_ sender: UIButton) {
        // Play Sound
        if let url = Bundle.main.url(forResource: sender.currentTitle!, withExtension: "wav") {
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            }
            catch {print(error)}
        }
        // Customise UI
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
}
