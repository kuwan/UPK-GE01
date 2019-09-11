//
//  ContactUs.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class ContactUs : Object{
    
    
    @objc dynamic var ID = 0
    
    @objc dynamic var OssId = 0
    
    @objc dynamic var Pictures = ""
    
    @objc dynamic var CommentContent  = ""
    
    @objc dynamic var CommentTime = ""
    
    @objc dynamic var ReplyContent = ""
    
    @objc dynamic var ReplyTime = ""
    
    @objc dynamic var IsRead = false
}
