//
//  ViewController.swift
//  Xylophone
//
//  Created by Daniela Lima on 2022-06-29.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        
        playSound(soundName: sender.currentTitle!)
        
        //reduces the sender's (button pressed) opacity to half
        sender.alpha = 0.5
        
        //code should execute after 0.2 second delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            
            //brings sender's opacity back to fully opaque
            sender.alpha = 1.0
        }
    }
        
    func playSound(soundName: String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()

        }
}
    


