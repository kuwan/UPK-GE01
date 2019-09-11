//
//  Location.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class Location : Object{
    
    @objc dynamic var LocationId = 0
    
    @objc dynamic var Location_En = ""
    
    @objc dynamic var Location_CHS = ""
    
    @objc dynamic var Location_CHT = ""
    
    @objc dynamic var Picture = ""
    
    @objc dynamic var MinPicture = ""
    
    static func initLocation(_ LocationId : Int ,_ Location_En : String
        ,_ Location_CHS : String ,_ Location_CHT : String
        ,_ Picture : String,_ MinPicture : String) -> Location{
        
        let location = Location()
        
        location.LocationId = LocationId
        location.Location_En = Location_En
        location.Location_CHS = Location_CHS
        location.Location_CHT = Location_CHT
        location.Picture = Picture
        location.MinPicture = MinPicture
        
        
        return location
    }
}
