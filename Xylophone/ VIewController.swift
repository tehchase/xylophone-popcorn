//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var keyPressed : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        
        keyPressed = ("note" + String(sender.tag))
        print(keyPressed)
        playSound()
        
    }
    
    func playSound() {
        
        let soundURL = Bundle.main.url(forResource: keyPressed, withExtension: "wav")
        print (keyPressed)
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        
    }
}


