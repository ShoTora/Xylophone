//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        // sets opacity to half - you can change the opacity by editing "0.5"
        sender.alpha = 0.5
        
        
        playSound(soundName: sender.currentTitle!)

        /*
        Code should execute after 0.2 second delay.
        You can change delay by editing 0.2.
        */
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
          // Bring's sender's opacity back up to fully opaque
          sender.alpha = 1.0
        }
                
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


