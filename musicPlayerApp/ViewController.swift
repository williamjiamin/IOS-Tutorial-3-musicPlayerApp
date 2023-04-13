//
//  ViewController.swift
//  musicPlayerApp
//
//  Created by william on 2023/1/9.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        playKeySound(keyName: sender.currentTitle!)
//        print(sender.currentTitle)
        
    }
    
    
    func playKeySound(keyName: String) {
        let url = Bundle.main.url(forResource: keyName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    


}

