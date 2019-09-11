//
//  Category.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

/**
 分类
 */
import Foundation
import RealmSwift

class Category : Object{

    
    @objc dynamic var CategoryID = 0
    
    @objc dynamic var Category_EN : String = ""
    
    @objc dynamic var Category_CHS : String = ""
    
    @objc dynamic var Category_CHT : String = ""
    
    static func initCategory(_ CategoryID : Int ,_ Category_EN : String
        ,_ Category_CHS : String ,_ Category_CHT : String) -> Category{
        
        let category = Category()
        
        category.CategoryID = CategoryID
        category.Category_EN = Category_EN
        category.Category_CHS = Category_CHS
        category.Category_CHT = Category_CHT
        
        return category
    }
    
}
