//
//  ErrorPassword.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class ErrorPassword : Object{
    @objc dynamic var Id = 0
    
    @objc dynamic var Username = ""
    
    @objc dynamic var ErrTotal = 0
}
