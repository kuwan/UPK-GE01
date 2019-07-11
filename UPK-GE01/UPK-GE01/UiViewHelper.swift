//
//  UiViewHelper.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/7/11.
//  Copyright © 2019 umehealltd. All rights reserved.
//  方便在storyboard上面设置相关属性

import Foundation
import UIKit

extension UIView{
    
    //圆角半径
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    //阴影圆角
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    //透明度
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    //阴影颜色
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            return layer.shadowColor != nil ? UIColor(cgColor: layer.shadowColor!) : nil
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }
    
    //阴影偏移量
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
}
