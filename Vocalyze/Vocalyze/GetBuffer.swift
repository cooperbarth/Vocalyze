//
//  GetBuffer.swift
//  Vocalyze
//
//  Created by Cooper Barth on 3/29/19.
//  Copyright © 2019 cooperbarth. All rights reserved.
//

import UIKit
import MediaPlayer

class GetBuffer: UIViewController, MPMediaPickerControllerDelegate {

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.showMusicLibrary()
    }

    func showMusicLibrary() {
        let songPicker = MPMediaPickerController(mediaTypes: .music)
        songPicker.delegate = self
        songPicker.popoverPresentationController?.sourceView = self.view
        songPicker.allowsPickingMultipleItems = false
        self.present(songPicker, animated: true, completion: nil)
        print(songPicker)
    }

    func mediaPicker(_ mediaPicker: MPMediaPickerController, didPickMediaItems mediaItemCollection: MPMediaItemCollection) {
        mediaPicker.dismiss(animated: true, completion: nil)
    }

    func mediaPickerDidCancel(_ mediaPicker: MPMediaPickerController) {
        mediaPicker.dismiss(animated: true, completion: nil)
    }

}
