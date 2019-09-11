//
//  ProgramDetail.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class ProgramDetail : Object{
    
    @objc dynamic var ProgramDetailId = 0
    
    @objc dynamic var CategoryId = 0
    
    @objc dynamic var LocationId = 0
    
    @objc dynamic var ProgramId = 0
    
    @objc dynamic var Category : Category?
    
    @objc dynamic var Location : Location?
    
    @objc dynamic var Program : Program?
    
    static func initProgramDetail(_ ProgramDetailId : Int ,_ CategoryId : Int,_ LocationId : Int
        ,_ ProgramId : Int) -> ProgramDetail{
        
        let programDetail = ProgramDetail()
        programDetail.ProgramDetailId = ProgramDetailId
        programDetail.CategoryId = CategoryId
        programDetail.LocationId = LocationId
        programDetail.ProgramId = ProgramId
        
        return programDetail
    }
}
