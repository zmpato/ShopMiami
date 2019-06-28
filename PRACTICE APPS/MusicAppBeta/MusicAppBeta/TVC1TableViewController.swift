//
//  TVC1TableViewController.swift
//  MusicAppBeta
//
//  Created by Zach mills on 6/27/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import UIKit





class TVC1TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hotTrackNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TrackCell = TrackCell(style: UITableViewCellStyle.default, reuseIdentifier: cellID, hotTracks: hotTrackNameArray[indexPath.row])
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    var tv1TableView : UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    //data in the cells
    var hotTrackNameArray : [HotTracks] = [HotTracks(trackName: "Best of the Week", mediaType: "https://music.apple.com/us/playlist/best-of-the-week/pl.2b0e6e332fdf4b7a91164da3162127b5?app=music", coverArt: #imageLiteral(resourceName: "BestoPic")), HotTracks(trackName: "The A-List: Alternative", mediaType: "https://music.apple.com/us/playlist/the-a-list-alternative/pl.0b593f1142b84a50a2c1e7088b3fb683?app=music", coverArt: #imageLiteral(resourceName: "Altpic")), HotTracks(trackName: "Today's Hits", mediaType: "https://music.apple.com/us/playlist/todays-hits/pl.f4d106fed2bd41149aaacabb233eb5eb?app=music", coverArt: #imageLiteral(resourceName: "Todaypic")), HotTracks(trackName: "Wax Eclectic", mediaType: "https://music.apple.com/us/playlist/wax-eclectic/pl.c463e22d78b44011935bb22c39d2c66f?app=music", coverArt: #imageLiteral(resourceName: "Wax")), HotTracks(trackName: "danceXL", mediaType: "https://music.apple.com/us/playlist/dancexl/pl.6bf4415b83ce4f3789614ac4c3675740?app=music", coverArt: #imageLiteral(resourceName: "Dancepic")), HotTracks(trackName: "The A-List: Pop", mediaType: "https://music.apple.com/us/playlist/the-a-list-pop/pl.5ee8333dbe944d9f9151e97d92d1ead9?app=music", coverArt: #imageLiteral(resourceName: "PopPic")), HotTracks(trackName: "Dale Play!", mediaType: "https://music.apple.com/us/playlist/dale-play/pl.4b364b8b182f4115acbf6deb83bd5222?app=music", coverArt: #imageLiteral(resourceName: "DalePic")), HotTracks(trackName: "The A-List: Hip-Hop", mediaType: "https://music.apple.com/us/playlist/the-a-list-hip-hop/pl.abe8ba42278f4ef490e3a9fc5ec8e8c5?app=music", coverArt: #imageLiteral(resourceName: "HipPic")), HotTracks(trackName: "The A-List: Christian", mediaType: "https://music.apple.com/us/playlist/the-a-list-christian/pl.fecfa8a26ea44ad581d4fe501892c8ff?app=music", coverArt: #imageLiteral(resourceName: "ChristPic")), HotTracks(trackName: "The A-List: R&B", mediaType: "https://music.apple.com/us/playlist/the-a-list-r-b/pl.b7ae3e0a28e84c5c96c4284b6a6c70af?app=music", coverArt: #imageLiteral(resourceName: "RBPic"))]
    var cellID = "cellID"
    //Setting up TableView and cells
    
   override func viewDidLoad() {
        super.viewDidLoad()
    view.backgroundColor = UIColor.white
    
   
    
    
    
    
   
    tv1TableView.frame = view.frame
    tv1TableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    tv1TableView.delegate = self
    tv1TableView.dataSource = self
    tv1TableView.register(TrackCell.self, forCellReuseIdentifier: cellID)
    view.addSubview(tv1TableView)
    
    

        
        //----------------------------------------------------------------------------------------------------
        //----------------------------------------------------------------------------------------------------
        
        
        
        
        
        //Network request for data then making it readable for use
        
        let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/apple-music/hot-tracks/all/10/explicit.json")!
        let task = URLSession.shared.dataTask(with: url) { (data,
            response, error) in
            
            
            //for errors/invalid JSON
            
            if error != nil {
                
                print(error!)
                
            } else {
                
                if let urlContent = data {
                    
                    do {
                        let jsonResult = try JSONSerialization.jsonObject(with: urlContent, options: JSONSerialization.ReadingOptions.mutableContainers)
                        
                        print(jsonResult)
                    } catch {
                        print("JSON Failed")
                    }
                    
                }
                
            }
        }
        
        task.resume()
}
    
   
    
    
    
    
}
       


    
    
    
    
    
    
    
    
    





