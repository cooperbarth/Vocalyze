//
//  Song.swift
//  Vocalyze
//
//  Created by Cooper Barth on 3/29/19.
//  Copyright © 2019 cooperbarth. All rights reserved.
//

import Foundation

class Song {
    var title: String
    var lyrics: String
    var buffer: [Float32]

    init(title: String, lyrics: String, buffer: [Float32]) {
        self.title = title
        self.lyrics = lyrics
        self.buffer = buffer
    }
}
