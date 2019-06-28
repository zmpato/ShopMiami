//
//  CustomCell.swift
//  MusicAppBeta
//
//  Created by Zach mills on 6/27/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit

class TrackCell : UITableViewCell {
    
    var hotTracks : HotTracks!
    
    var coverArt : UIImageView = {
        
        let imageView = UIImageView()
        return imageView
        
    }()
    
    var trackName : UILabel = {
        let label = UILabel()
        return label
    }()
    
    var mediaType : UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont(name: "Helvetica", size: 13)
        return label
        
    }()
    
    
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, hotTracks: HotTracks) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.hotTracks = hotTracks
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    override func layoutSubviews() {
        
        
        
        //displaying the data in the cells with designated sizes
            coverArt.frame = CGRect(x: 5, y: 0, width: self.contentView.frame.height, height: self.contentView.frame.height)
                coverArt.image = hotTracks.coverArt
            coverArt.contentMode = .scaleAspectFill
            self.contentView.addSubview(coverArt)
        
        trackName.frame = CGRect(x: coverArt.frame.maxX + 8, y: self.contentView.frame.height / 2 - 15, width: self.contentView.frame.width - 5 - coverArt.frame.width - 10 - 10, height: 30)
        trackName.text = hotTracks.trackName
        self.contentView.addSubview(trackName)
        
        mediaType.frame = CGRect(x: trackName.frame.origin.x, y: trackName.frame.maxY, width: trackName.frame.width, height: 20)
        mediaType.text = hotTracks.mediaType
        self.contentView.addSubview(mediaType)
        
        
            
            
        
        
        
        
        
    }
}
