//
//  meditationStruct.swift
//  MediFocus
//
//  Created by MEHMET ONUR ÜSTÜNEL on 29.07.2020.
//  Copyright © 2020 MEHMET ONUR ÜSTÜNEL. All rights reserved.
//

import Foundation
struct meditation {
    var songFileName = ""
    var songType = ""
    var songName =  ""
    var singerName = ""
    var coverImageName = ""
    
    init(songFileName : String, songType : String, songName : String, singerName : String, coverImageName : String) {
        self.songFileName = songFileName
        self.songType = songType
        self.songName = songName
        self.singerName = singerName
        self.coverImageName = coverImageName
        
    }
    
}
