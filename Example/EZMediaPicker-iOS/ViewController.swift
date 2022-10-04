//
//  ViewController.swift
//  EZMediaPicker-iOS
//
//  Created by harooniqbl1993 on 10/04/2022.
//  Copyright (c) 2022 harooniqbl1993. All rights reserved.
//

import UIKit
import AVKit
import EZMediaPicker_iOS

class ViewController: UIViewController {
    
    @IBOutlet weak var attachedImage: UIImageView!
    
    var mediaPickerManager: MediaPickerManager? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        mediaPickerManager = MediaPickerManager()
    }
    
    func playVideo(url: URL) {
        let player = AVPlayer(url: url)
        let avController = AVPlayerViewController()
        avController.player = player
        // your desired frame
        avController.view.frame = self.view.frame
        self.view.addSubview(avController.view)
        self.addChild(avController)
        player.play()
    }

    @IBAction func pickImage(_ sender: UIButton) {
        mediaPickerManager?.pickImage(viewController: self, mediaType: .gallery, completion: { [weak self] image, videoURL, error in
            if let error = error {
                print("ERROR: ", error)
                return
            }
            self?.attachedImage.image = image
        })
    }
    
    @IBAction func pickVideo(_ sender: UIButton) {
        mediaPickerManager?.pickImage(viewController: self, mediaType: .video, completion: { [weak self] image, videoURL, error in
            if let error = error {
                print("ERROR: ", error)
                return
            }
            if let videoURL = videoURL {
                self?.playVideo(url: videoURL)
            }
        })
    }
    
    @IBAction func openCamera(_ sender: UIButton) {
        mediaPickerManager?.pickImage(viewController: self, mediaType: .camera, completion: { [weak self] image, videoURL, error in
            if let error = error {
                print("ERROR: ", error)
                return
            }
            self?.attachedImage.image = image
        })
    }
    
}

