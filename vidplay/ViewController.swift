//
//  ViewController.swift
//  vidplay
//
//  Created by mohammadkarbalee on 12.09.23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func findVideo() -> String? {
        guard let path = Bundle.main.path(forResource: "test", ofType: "mov") else {
            debugPrint("not found")
            return nil
        }
        
        return path
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    private func playVideo() {
        let videoPath: String? = findVideo()
        let player = AVPlayer(url: URL(fileURLWithPath: videoPath!))
        let controller = AVPlayerViewController()
        
        controller.player = player
        
        present(controller, animated: true) {
            player.play()
        }
    }
}

