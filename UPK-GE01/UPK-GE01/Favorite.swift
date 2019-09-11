//
//  Favorite.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class Favorite : Object{
    
    @objc dynamic var Id = 0
    
    @objc dynamic var ProgramId = 0
    
    @objc dynamic var LocationId = 0
    
    @objc dynamic var UpdateId = 0
    
    var Program : Program?
    
    var Location : Location?
}
