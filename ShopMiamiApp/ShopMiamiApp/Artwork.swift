//
//  Artwork.swift
//  ShopMiamiApp
//
//  Created by Zach mills on 9/2/19.
//  Copyright © 2019 Zach mills. All rights reserved.
//

import Foundation
import MapKit

class Artwork: NSObject, MKAnnotation {
    let MALL: String?
    let ADDRESS: String
    let PHONE: String
    let coordinate: CLLocationCoordinate2D
    init(MALL: String, ADDRESS: String, PHONE: String, coordinate: CLLocationCoordinate2D) {
        
        
        
        
        
        self.MALL = MALL
        self.ADDRESS = ADDRESS
        self.PHONE = PHONE
        self.coordinate = coordinate
        
        
        super.init()
        
        
        
    }
    
   
    init?(json: [Any]) {
        // 1
        if let MALL = json[2] as? String {
            self.MALL = MALL
        } else {
            self.MALL = "none"
        }
        
        self.ADDRESS = json[3] as! String
        self.PHONE = json[7] as! String
        // 2
        if let LAT = Double(json[8] as! String),
            let LON = Double(json[9] as! String) {
            self.coordinate = CLLocationCoordinate2D(latitude: LAT, longitude: LON)
        } else {
            self.coordinate = CLLocationCoordinate2D()
        }
    }
    
    var subtitle: String? {
        return MALL
    }
    
}
