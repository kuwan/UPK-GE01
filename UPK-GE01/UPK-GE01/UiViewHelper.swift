//
//  UiViewHelper.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/7/11.
//  Copyright © 2019 umehealltd. All rights reserved.
//  扩展ui属性，增加圆角和阴影设置

import Foundation
import UIKit

extension UIView{
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
}
