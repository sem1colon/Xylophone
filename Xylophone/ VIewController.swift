//
//  ViewController.swift
//  Xylophone
//
//  Created by Vamsi Kaza on 19/6/2017.
//  Copyright © 2017 Sem1colon Inc. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectSoundFileName : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        selectSoundFileName = soundArray[sender.tag]
        print(selectSoundFileName)
        
        playSound()
        
    }
    
    func playSound(){
        let soundURL = Bundle.main.url(forResource: selectSoundFileName, withExtension: "wav")
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
}
