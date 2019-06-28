//
//  File.swift
//  MusicAppBeta
//
//  Created by Zach mills on 6/27/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class HotTracks {
    var trackName : String!
    var mediaType : String!
    var coverArt : UIImage!
    
    init(trackName: String, mediaType: String, coverArt: UIImage) {
        self.trackName = trackName
        self.mediaType = mediaType
        self.coverArt = coverArt
    }
    
    
    
}
