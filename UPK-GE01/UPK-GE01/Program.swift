//
//  Program.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import RealmSwift

class Program : Object {
    @objc dynamic var ProgramId = 0
    
    @objc dynamic var ProgramName_EN = ""
    
    @objc dynamic var ProgramName_CHS = ""
    
    @objc dynamic var ProgramName_CHT = ""
    
    @objc dynamic var Time = ""
    
    @objc dynamic var Re_Name = ""
    
    @objc dynamic var DescriptionS_EN = ""
    
    @objc dynamic var DescriptionS_CHS = ""
    
    @objc dynamic var DescriptionS_CHT = ""
    
    @objc dynamic var Description_EN = ""
    
    @objc dynamic var Description_CHS = ""
    
    @objc dynamic var Description_CHT = ""
    
    @objc dynamic var Intensity_EN = ""
    
    @objc dynamic var Intensity_CHS = ""
    
    @objc dynamic var Intensity_CHT = ""
    
    @objc dynamic var Use_EN = ""
    
    @objc dynamic var Use_CHS = ""
    
    @objc dynamic var Use_CHT = ""
    
    @objc dynamic var Caution_EN = ""
    
    @objc dynamic var Caution_CHS = ""
    
    @objc dynamic var Caution_CHT = ""
    
    @objc dynamic var SourceFile = ""
    
    @objc dynamic var DefaultIntensity = ""
    
    @objc dynamic var ProgramLevel = ""
    
    @objc dynamic var DefaultRating = 0.0
    
    @objc dynamic var DefaultReview_EN = ""
    
    @objc dynamic var DefaultReview_CHS = ""
    
    @objc dynamic var DefaultReview_CHT = ""
    
    @objc dynamic var ProgramType = ""
    
    @objc dynamic var NewRating = 0.0
    
    //多对一的关系
    @objc dynamic var Category : Category?
    
    var IsFavorite = false
    
    var Location : Location?
    
    static func initProgram (_ ProgramId : Int ,_ ProgramName_EN : String ,_ ProgramName_CHS : String
        ,_ ProgramName_CHT : String ,_ Time : String ,_ Re_Name : String
        ,_ DescriptionS_EN : String ,_ DescriptionS_CHS : String ,_ DescriptionS_CHT : String
        ,_ Description_EN : String ,_ Description_CHS : String ,_ Description_CHT : String
        ,_ Intensity_EN : String ,_ Intensity_CHS : String ,_ Intensity_CHT : String
        ,_ Use_EN : String ,_ Use_CHS : String ,_ Use_CHT : String
        ,_ Caution_EN : String ,_ Caution_CHS : String ,_ Caution_CHT : String
        ,_ SourceFile : String ,_ DefaultIntensity : String ,_ ProgramLevel : String
        ,_ DefaultRating : Double,_ DefaultReview_EN : String ,_ DefaultReview_CHS : String
        ,_ DefaultReview_CHT : String,_ ProgramType :String ,_ NewRating : Double ) -> Program {
        
        let program = Program()
        
        program.ProgramId = ProgramId;
        program.ProgramName_EN = ProgramName_EN
        program.ProgramName_CHS = ProgramName_CHS
        program.ProgramName_CHT = ProgramName_CHT
        program.Time = Time
        program.Re_Name = Re_Name
        program.DescriptionS_EN = DescriptionS_EN
        program.DescriptionS_CHS = DescriptionS_CHS
        program.DescriptionS_CHT = DescriptionS_CHT
        program.Description_EN = Description_EN
        program.Description_CHS = Description_CHS
        program.Description_CHT = Description_CHT
        program.Intensity_EN = Intensity_EN
        program.Intensity_CHS = Intensity_CHS
        program.Intensity_CHT = Intensity_CHT
        program.Use_EN = Use_EN
        program.Use_CHS = Use_CHS
        program.Use_CHT = Use_CHT
        program.Caution_EN = Caution_EN
        program.Caution_CHS = Caution_CHS
        program.Caution_CHT = Caution_CHT
        program.SourceFile = SourceFile
        program.DefaultIntensity = DefaultIntensity
        program.ProgramLevel = ProgramLevel
        program.DefaultRating = DefaultRating
        program.DefaultReview_EN = DefaultReview_EN
        program.DefaultReview_CHS = DefaultReview_CHS
        program.DefaultReview_CHT = DefaultReview_CHT
        program.ProgramType = ProgramType
        program.NewRating = NewRating
        
        
        return program
    }
    
}

