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
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
     
        switch(sender.tag) {
            
        case 1:
            noteSound(note: "note1")
            break
        case 2:
            noteSound(note: "note2")
            break
        case 3:
            noteSound(note: "note3")
            break
        case 4:
            noteSound(note: "note4")
            break
        case 5:
            noteSound(note: "note5")
            break
        case 6:
            noteSound(note: "note6")
            break
        case 7:
            noteSound(note: "note7")
            break
        default:
            break
        }
    }
    
    
    func noteSound(note : String) {
        
        let soundURL = Bundle.main.url(forResource: note, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch{
            print(error)
        }
        
        audioPlayer.play()

    }

}

