//
//  RecommendBean.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class RecommendBean : Object{
    
    @objc dynamic var Id = 0
    
    @objc dynamic var ProgramIds = ""
    
    @objc dynamic var LocationId = 0
    
    @objc dynamic var Position = ""
    
    @objc dynamic var TypeName = ""
    
    @objc dynamic var QustionId = 0
    
    @objc dynamic var UpdateId = 0
    
    @objc dynamic var Relieve_Q1 = 0
    
    @objc dynamic var Relieve_Q2 = 0
    
    @objc dynamic var Relieve_Q3 = 0
    
    @objc dynamic var Relieve_Q4 = 0
    
    @objc dynamic var Strengthen_Q1 = 0
    
    @objc dynamic var Strengthen_Q2 = 0 
    
    @objc dynamic var Strengthen_Q3 = 0
    
    @objc dynamic var Strengthen_Q4 = 0
    
    @objc dynamic var Relax_Q1 = 0
    
    @objc dynamic var Relax_Q2 = 0
    
    @objc dynamic var Relax_Q3 = 0
    
    @objc dynamic var ProgramType = ""
    
    let programs = List<Program>()
    
    var location : Location?
}
