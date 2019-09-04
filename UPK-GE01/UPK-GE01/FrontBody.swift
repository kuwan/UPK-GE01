//
//  FrontBodyView.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/8/28.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import UIKit



import UIKit

public class FrontBody : NSObject {
    
    //点击坐标
    var clickPoint : CGPoint = CGPoint(x: 0, y: 0)
    //横向比
    var viewScalesW : CGFloat?
    //纵向比
    var viewScalesH : CGFloat?
    //横向移动距离
    var translateX : CGFloat?
    //纵向移动距离
    var translateY : CGFloat?
    
    //获得当前选中的部位名称，如果没有选中则返回为“”
    func getBodyName() -> String{
        return ""
    }
    
    
    //判断是哪一区域被点击了
    func clickBody(point : CGPoint){
        //获取b状态栏高度
        
        
        let clickx = point.x / viewScalesW! + translateX!
        let clicky = (point.y) / viewScalesH! + translateY!
        
        print("放大后 \(clickx),\(clicky)")
        clickPoint = CGPoint(x: clickx, y: clicky)
        
    
    }
    
    //// Drawing Methods
    
    func drawFrontbodyCanvas(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 2126, height: 3629), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 2126, height: 3629), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 2126, y: resizedFrame.height / 3629)
        
        viewScalesW = resizedFrame.width / 2126
        viewScalesH = resizedFrame.height / 3629
        translateX = resizedFrame.minX
        translateY = resizedFrame.minY
        
        //// Color Declarations
        let fillColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        let fillColor2 = UIColor(red: 0.980, green: 0.886, blue: 0.835, alpha: 1.000)
        let fillColor3 = UIColor(red: 0.973, green: 0.773, blue: 0.663, alpha: 1.000)
        let strokeColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        
        //// 图层_1_x5F_复制
        //// Group 4
        //// Oval Drawing
        context.saveGState()
        context.translateBy(x: 698, y: 2580.14)
        context.rotate(by: 16.1 * CGFloat.pi/180)
        
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: -123.1, y: -135.1, width: 246.2, height: 270.2))
        fillColor.setFill()
        ovalPath.fill()
        
        context.restoreGState()
        
        
        //// Oval 2 Drawing
        context.saveGState()
//        context.translateBy(x: 698.3, y: 2579)
//        context.rotate(by: 16.2 * CGFloat.pi/180)
        
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: -109.85, y: -121.65, width: 219.7, height: 243.3))
        oval2Path.apply(CGAffineTransform(rotationAngle: 16.2 * CGFloat.pi / 180))
        oval2Path.apply(CGAffineTransform(translationX: 698.3, y: 2579))
        if oval2Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval2Path.fill()
        
        context.restoreGState()
        
        
        
        
        //// Group 5
        //// Group 6
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 807.45, y: 2633.28))
        bezierPath.addCurve(to: CGPoint(x: 660.12, y: 2705.74), controlPoint1: CGPoint(x: 780.1, y: 2690.79), controlPoint2: CGPoint(x: 718.13, y: 2722.73))
        bezierPath.addCurve(to: CGPoint(x: 577.03, y: 2612.33), controlPoint1: CGPoint(x: 616.88, y: 2693.08), controlPoint2: CGPoint(x: 586.43, y: 2656.37))
        bezierPath.addCurve(to: CGPoint(x: 575.14, y: 2615.58), controlPoint1: CGPoint(x: 576.44, y: 2613.1), controlPoint2: CGPoint(x: 575.81, y: 2614.17))
        bezierPath.addCurve(to: CGPoint(x: 556.43, y: 2778.12), controlPoint1: CGPoint(x: 562.36, y: 2642.45), controlPoint2: CGPoint(x: 556.72, y: 2763.97))
        bezierPath.addCurve(to: CGPoint(x: 537.06, y: 3154.16), controlPoint1: CGPoint(x: 554.11, y: 2895.36), controlPoint2: CGPoint(x: 558.54, y: 3036.37))
        bezierPath.addCurve(to: CGPoint(x: 595.22, y: 3142.54), controlPoint1: CGPoint(x: 553.31, y: 3141.54), controlPoint2: CGPoint(x: 574.66, y: 3136.53))
        bezierPath.addCurve(to: CGPoint(x: 640.07, y: 3190.98), controlPoint1: CGPoint(x: 618.3, y: 3149.28), controlPoint2: CGPoint(x: 634.72, y: 3168.3))
        bezierPath.addCurve(to: CGPoint(x: 674.59, y: 3108.39), controlPoint1: CGPoint(x: 658.53, y: 3174.28), controlPoint2: CGPoint(x: 671.36, y: 3135.05))
        bezierPath.addCurve(to: CGPoint(x: 738.98, y: 2923.85), controlPoint1: CGPoint(x: 694.62, y: 3037.12), controlPoint2: CGPoint(x: 716.99, y: 2982.79))
        bezierPath.addCurve(to: CGPoint(x: 810.4, y: 2638.57), controlPoint1: CGPoint(x: 768.94, y: 2843.6), controlPoint2: CGPoint(x: 810.06, y: 2726.71))
        bezierPath.addCurve(to: CGPoint(x: 807.45, y: 2633.28), controlPoint1: CGPoint(x: 809.57, y: 2636.1), controlPoint2: CGPoint(x: 808.58, y: 2634.39))
        bezierPath.close()
        if bezierPath.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezierPath.fill()
        
        
        //// Group 7
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 556.43, y: 3275.02))
        bezier2Path.addCurve(to: CGPoint(x: 517.95, y: 3243.43), controlPoint1: CGPoint(x: 539.37, y: 3270.03), controlPoint2: CGPoint(x: 525.95, y: 3258.34))
        bezier2Path.addCurve(to: CGPoint(x: 516.56, y: 3246.46), controlPoint1: CGPoint(x: 517.5, y: 3244.99), controlPoint2: CGPoint(x: 517.04, y: 3246.15))
        bezier2Path.addCurve(to: CGPoint(x: 426.77, y: 3359.76), controlPoint1: CGPoint(x: 486.74, y: 3284.32), controlPoint2: CGPoint(x: 457.74, y: 3322.89))
        bezier2Path.addCurve(to: CGPoint(x: 400.07, y: 3439.14), controlPoint1: CGPoint(x: 407, y: 3383.29), controlPoint2: CGPoint(x: 397.88, y: 3410.03))
        bezier2Path.addCurve(to: CGPoint(x: 479.41, y: 3511.37), controlPoint1: CGPoint(x: 404.03, y: 3491.59), controlPoint2: CGPoint(x: 444.82, y: 3483.52))
        bezier2Path.addCurve(to: CGPoint(x: 541.46, y: 3509.47), controlPoint1: CGPoint(x: 502.41, y: 3529.89), controlPoint2: CGPoint(x: 529.93, y: 3534.76))
        bezier2Path.addCurve(to: CGPoint(x: 610.4, y: 3276.09), controlPoint1: CGPoint(x: 575.35, y: 3435.07), controlPoint2: CGPoint(x: 604.52, y: 3364.54))
        bezier2Path.addCurve(to: CGPoint(x: 611.25, y: 3265.84), controlPoint1: CGPoint(x: 610.61, y: 3272.88), controlPoint2: CGPoint(x: 610.99, y: 3269.28))
        bezier2Path.addCurve(to: CGPoint(x: 556.43, y: 3275.02), controlPoint1: CGPoint(x: 595.47, y: 3276.64), controlPoint2: CGPoint(x: 575.6, y: 3280.63))
        bezier2Path.close()
        if bezier2Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier2Path.fill()
        
        
        //// Oval 3 Drawing
        context.saveGState()
        context.translateBy(x: 575.65, y: 3209.96)
        context.rotate(by: 16.3 * CGFloat.pi/180)
        
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: -66, y: -69.65, width: 132, height: 139.3))
        fillColor.setFill()
        oval3Path.fill()
        
        context.restoreGState()
        
        
        
        
        
        
        //// Oval 4 Drawing
        context.saveGState()
//        context.translateBy(x: 575.85, y: 3209.32)
//        context.rotate(by: 16.25 * CGFloat.pi/180)
        
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: -58.9, y: -62.7, width: 117.8, height: 125.4))
        oval4Path.apply(CGAffineTransform(rotationAngle: 16.25 * CGFloat.pi / 180))
        oval4Path.apply(CGAffineTransform(translationX: 575.85, y: 3209.32))
        if oval4Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval4Path.fill()
        
        context.restoreGState()
        
        
        
        
        //// Group 8
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 1473.02, y: 2710.36))
        bezier3Path.addCurve(to: CGPoint(x: 1556.82, y: 2613.32), controlPoint1: CGPoint(x: 1517.43, y: 2697.37), controlPoint2: CGPoint(x: 1548.35, y: 2658.97))
        bezier3Path.addCurve(to: CGPoint(x: 1553.3, y: 2547.23), controlPoint1: CGPoint(x: 1560.73, y: 2592.24), controlPoint2: CGPoint(x: 1559.86, y: 2569.62))
        bezier3Path.addCurve(to: CGPoint(x: 1535.24, y: 2508.21), controlPoint1: CGPoint(x: 1549.13, y: 2532.98), controlPoint2: CGPoint(x: 1542.96, y: 2519.88))
        bezier3Path.addCurve(to: CGPoint(x: 1397.73, y: 2453.18), controlPoint1: CGPoint(x: 1504.63, y: 2461.89), controlPoint2: CGPoint(x: 1449.6, y: 2437.97))
        bezier3Path.addCurve(to: CGPoint(x: 1312.91, y: 2556.52), controlPoint1: CGPoint(x: 1351.28, y: 2466.74), controlPoint2: CGPoint(x: 1319.59, y: 2508.12))
        bezier3Path.addCurve(to: CGPoint(x: 1317.43, y: 2616.28), controlPoint1: CGPoint(x: 1310.25, y: 2575.77), controlPoint2: CGPoint(x: 1311.54, y: 2596.12))
        bezier3Path.addCurve(to: CGPoint(x: 1325.62, y: 2637.79), controlPoint1: CGPoint(x: 1319.63, y: 2623.79), controlPoint2: CGPoint(x: 1322.38, y: 2630.97))
        bezier3Path.addCurve(to: CGPoint(x: 1473.02, y: 2710.36), controlPoint1: CGPoint(x: 1352.95, y: 2695.37), controlPoint2: CGPoint(x: 1414.95, y: 2727.32))
        bezier3Path.close()
        fillColor.setFill()
        bezier3Path.fill()
        
        
        //// Oval 5 Drawing
        context.saveGState()
//        context.translateBy(x: 1435.35, y: 2583.43)
//        context.rotate(by: -16.15 * CGFloat.pi/180)
        
        let oval5Path = UIBezierPath(ovalIn: CGRect(x: -109.9, y: -121.65, width: 219.8, height: 243.3))
        oval5Path.apply(CGAffineTransform(rotationAngle:  -16.15 * CGFloat.pi / 180))
        oval5Path.apply(CGAffineTransform(translationX: 1435.35, y: 2583.43))
        if oval5Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval5Path.fill()
        
        context.restoreGState()
        
        
        
        
        //// Group 9
        //// Group 10
        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 1537.9, y: 3147.15))
        bezier4Path.addCurve(to: CGPoint(x: 1598.7, y: 3160.92), controlPoint1: CGPoint(x: 1559.6, y: 3140.78), controlPoint2: CGPoint(x: 1582.17, y: 3146.72))
        bezier4Path.addCurve(to: CGPoint(x: 1578.41, y: 2780.19), controlPoint1: CGPoint(x: 1576.2, y: 3042.19), controlPoint2: CGPoint(x: 1580.77, y: 2898.95))
        bezier4Path.addCurve(to: CGPoint(x: 1559.73, y: 2617.62), controlPoint1: CGPoint(x: 1578.15, y: 2766.03), controlPoint2: CGPoint(x: 1572.51, y: 2644.5))
        bezier4Path.addCurve(to: CGPoint(x: 1556.82, y: 2613.32), controlPoint1: CGPoint(x: 1558.66, y: 2615.39), controlPoint2: CGPoint(x: 1557.71, y: 2614.02))
        bezier4Path.addCurve(to: CGPoint(x: 1473.02, y: 2710.35), controlPoint1: CGPoint(x: 1548.35, y: 2658.97), controlPoint2: CGPoint(x: 1517.43, y: 2697.37))
        bezier4Path.addCurve(to: CGPoint(x: 1325.62, y: 2637.79), controlPoint1: CGPoint(x: 1414.95, y: 2727.32), controlPoint2: CGPoint(x: 1352.95, y: 2695.37))
        bezier4Path.addCurve(to: CGPoint(x: 1324.43, y: 2640.64), controlPoint1: CGPoint(x: 1325.2, y: 2638.6), controlPoint2: CGPoint(x: 1324.8, y: 2639.54))
        bezier4Path.addCurve(to: CGPoint(x: 1395.87, y: 2925.91), controlPoint1: CGPoint(x: 1324.81, y: 2728.78), controlPoint2: CGPoint(x: 1365.92, y: 2845.66))
        bezier4Path.addCurve(to: CGPoint(x: 1460.27, y: 3110.41), controlPoint1: CGPoint(x: 1417.86, y: 2984.85), controlPoint2: CGPoint(x: 1440.23, y: 3039.18))
        bezier4Path.addCurve(to: CGPoint(x: 1493.93, y: 3192.23), controlPoint1: CGPoint(x: 1463.44, y: 3136.71), controlPoint2: CGPoint(x: 1475.92, y: 3175.13))
        bezier4Path.addCurve(to: CGPoint(x: 1537.9, y: 3147.15), controlPoint1: CGPoint(x: 1500.06, y: 3171.05), controlPoint2: CGPoint(x: 1515.99, y: 3153.57))
        bezier4Path.close()
        if bezier4Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier4Path.fill()
        
        
        //// Group 11
        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 1708.08, y: 3361.81))
        bezier5Path.addCurve(to: CGPoint(x: 1618.31, y: 3248.52), controlPoint1: CGPoint(x: 1677.11, y: 3324.92), controlPoint2: CGPoint(x: 1648.15, y: 3286.38))
        bezier5Path.addCurve(to: CGPoint(x: 1616.76, y: 3244.93), controlPoint1: CGPoint(x: 1617.77, y: 3248.16), controlPoint2: CGPoint(x: 1617.26, y: 3246.76))
        bezier5Path.addCurve(to: CGPoint(x: 1576.69, y: 3279.64), controlPoint1: CGPoint(x: 1609.01, y: 3261.32), controlPoint2: CGPoint(x: 1594.94, y: 3274.31))
        bezier5Path.addCurve(to: CGPoint(x: 1523.93, y: 3271.84), controlPoint1: CGPoint(x: 1558.35, y: 3285.03), controlPoint2: CGPoint(x: 1539.35, y: 3281.61))
        bezier5Path.addCurve(to: CGPoint(x: 1524.45, y: 3278.15), controlPoint1: CGPoint(x: 1524.12, y: 3274.01), controlPoint2: CGPoint(x: 1524.32, y: 3276.15))
        bezier5Path.addCurve(to: CGPoint(x: 1593.39, y: 3511.53), controlPoint1: CGPoint(x: 1530.34, y: 3366.6), controlPoint2: CGPoint(x: 1559.52, y: 3437.11))
        bezier5Path.addCurve(to: CGPoint(x: 1655.45, y: 3513.43), controlPoint1: CGPoint(x: 1604.91, y: 3536.86), controlPoint2: CGPoint(x: 1632.44, y: 3531.95))
        bezier5Path.addCurve(to: CGPoint(x: 1734.78, y: 3441.2), controlPoint1: CGPoint(x: 1690.02, y: 3485.55), controlPoint2: CGPoint(x: 1730.84, y: 3493.62))
        bezier5Path.addCurve(to: CGPoint(x: 1708.08, y: 3361.81), controlPoint1: CGPoint(x: 1737, y: 3412.09), controlPoint2: CGPoint(x: 1727.85, y: 3385.35))
        bezier5Path.close()
        if bezier5Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier5Path.fill()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: 1576.69, y: 3279.64))
        bezier6Path.addCurve(to: CGPoint(x: 1616.76, y: 3244.93), controlPoint1: CGPoint(x: 1594.94, y: 3274.31), controlPoint2: CGPoint(x: 1609.01, y: 3261.33))
        bezier6Path.addCurve(to: CGPoint(x: 1620.52, y: 3194.89), controlPoint1: CGPoint(x: 1623.8, y: 3230.02), controlPoint2: CGPoint(x: 1625.61, y: 3212.28))
        bezier6Path.addCurve(to: CGPoint(x: 1598.7, y: 3160.92), controlPoint1: CGPoint(x: 1616.49, y: 3181.14), controlPoint2: CGPoint(x: 1608.7, y: 3169.52))
        bezier6Path.addCurve(to: CGPoint(x: 1537.9, y: 3147.15), controlPoint1: CGPoint(x: 1582.17, y: 3146.73), controlPoint2: CGPoint(x: 1559.6, y: 3140.78))
        bezier6Path.addCurve(to: CGPoint(x: 1493.93, y: 3192.24), controlPoint1: CGPoint(x: 1515.99, y: 3153.57), controlPoint2: CGPoint(x: 1500.06, y: 3171.05))
        bezier6Path.addCurve(to: CGPoint(x: 1494.06, y: 3231.93), controlPoint1: CGPoint(x: 1490.33, y: 3204.69), controlPoint2: CGPoint(x: 1490.11, y: 3218.42))
        bezier6Path.addCurve(to: CGPoint(x: 1523.92, y: 3271.84), controlPoint1: CGPoint(x: 1499.11, y: 3249.19), controlPoint2: CGPoint(x: 1510.08, y: 3263.08))
        bezier6Path.addCurve(to: CGPoint(x: 1576.69, y: 3279.64), controlPoint1: CGPoint(x: 1539.35, y: 3281.61), controlPoint2: CGPoint(x: 1558.34, y: 3285.03))
        bezier6Path.close()
        fillColor.setFill()
        bezier6Path.fill()
        
        
        
        
        
        
        //// Oval 6 Drawing
        context.saveGState()
//        context.translateBy(x: 1557.25, y: 3213.87)
//        context.rotate(by: -15.9 * CGFloat.pi/180)
        
        let oval6Path = UIBezierPath(ovalIn: CGRect(x: -58.9, y: -62.65, width: 117.8, height: 125.3))
        oval6Path.apply(CGAffineTransform(rotationAngle:  -15.9 * CGFloat.pi / 180))
        oval6Path.apply(CGAffineTransform(translationX: 1557.25, y: 3213.87))
        if oval6Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval6Path.fill()
        
        context.restoreGState()
        
        
        
        
        //// Group 12
        //// Bezier 7 Drawing
        
        
        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: 1319.07, y: 1346.06))
        bezier8Path.addCurve(to: CGPoint(x: 1200.42, y: 1275.58), controlPoint1: CGPoint(x: 1290.06, y: 1322.4), controlPoint2: CGPoint(x: 1249.56, y: 1294.86))
        bezier8Path.addCurve(to: CGPoint(x: 1319.07, y: 1346.06), controlPoint1: CGPoint(x: 1246.56, y: 1298.91), controlPoint2: CGPoint(x: 1286.75, y: 1327.87))
        bezier8Path.close()
        if bezier8Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier8Path.fill()
        
        
        //// Bezier 9 Drawing
        let bezier9Path = UIBezierPath()
        bezier9Path.move(to: CGPoint(x: 756.81, y: 1373.91))
        bezier9Path.addLine(to: CGPoint(x: 756.96, y: 1371.87))
        bezier9Path.addCurve(to: CGPoint(x: 756.81, y: 1373.91), controlPoint1: CGPoint(x: 756.78, y: 1372.95), controlPoint2: CGPoint(x: 756.73, y: 1373.6))
        bezier9Path.close()
        if bezier9Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier9Path.fill()
        
        
        //// Bezier 10 Drawing
        let bezier10Path = UIBezierPath()
        bezier10Path.move(to: CGPoint(x: 908.4, y: 1287.99))
        bezier10Path.addCurve(to: CGPoint(x: 810.12, y: 1345.47), controlPoint1: CGPoint(x: 868.37, y: 1305.51), controlPoint2: CGPoint(x: 835.23, y: 1326.68))
        bezier10Path.addCurve(to: CGPoint(x: 908.4, y: 1287.99), controlPoint1: CGPoint(x: 837.85, y: 1330.4), controlPoint2: CGPoint(x: 871.49, y: 1308.26))
        bezier10Path.close()
        if bezier10Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier10Path.fill()
        
        
        //// Group 13
        //// Group 14
        //// Bezier 11 Drawing
        let bezier11Path = UIBezierPath()
        bezier11Path.move(to: CGPoint(x: 722.68, y: 1752.64))
        bezier11Path.addCurve(to: CGPoint(x: 722.44, y: 1729.14), controlPoint1: CGPoint(x: 721.63, y: 1745.61), controlPoint2: CGPoint(x: 721.73, y: 1737.33))
        bezier11Path.addCurve(to: CGPoint(x: 646.65, y: 2012.43), controlPoint1: CGPoint(x: 709.74, y: 1786.12), controlPoint2: CGPoint(x: 651.05, y: 1986.57))
        bezier11Path.addCurve(to: CGPoint(x: 592.7, y: 2497.74), controlPoint1: CGPoint(x: 620.92, y: 2163.97), controlPoint2: CGPoint(x: 591.25, y: 2343.92))
        bezier11Path.addCurve(to: CGPoint(x: 597.83, y: 2504.61), controlPoint1: CGPoint(x: 594.32, y: 2500.74), controlPoint2: CGPoint(x: 596.04, y: 2502.99))
        bezier11Path.addCurve(to: CGPoint(x: 735.92, y: 2448.72), controlPoint1: CGPoint(x: 628.33, y: 2457.73), controlPoint2: CGPoint(x: 683.72, y: 2433.44))
        bezier11Path.addCurve(to: CGPoint(x: 821.11, y: 2555.2), controlPoint1: CGPoint(x: 783.35, y: 2462.6), controlPoint2: CGPoint(x: 815.39, y: 2505.47))
        bezier11Path.addCurve(to: CGPoint(x: 857.35, y: 2499.53), controlPoint1: CGPoint(x: 834.67, y: 2550.44), controlPoint2: CGPoint(x: 846.21, y: 2514.44))
        bezier11Path.addCurve(to: CGPoint(x: 915.31, y: 2338.03), controlPoint1: CGPoint(x: 884.34, y: 2448.48), controlPoint2: CGPoint(x: 902.33, y: 2394.39))
        bezier11Path.addCurve(to: CGPoint(x: 979.37, y: 2127.39), controlPoint1: CGPoint(x: 930.95, y: 2270.02), controlPoint2: CGPoint(x: 949.78, y: 2191.97))
        bezier11Path.addCurve(to: CGPoint(x: 1058.47, y: 1986.75), controlPoint1: CGPoint(x: 987.33, y: 2109.54), controlPoint2: CGPoint(x: 1041, y: 2027.59))
        bezier11Path.addCurve(to: CGPoint(x: 955.89, y: 1933.53), controlPoint1: CGPoint(x: 1030.94, y: 1983.75), controlPoint2: CGPoint(x: 983.77, y: 1952.89))
        bezier11Path.addCurve(to: CGPoint(x: 722.68, y: 1752.64), controlPoint1: CGPoint(x: 895.87, y: 1891.82), controlPoint2: CGPoint(x: 732, y: 1815.49))
        bezier11Path.close()
        if bezier11Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier11Path.fill()
        
        
        //// Group 15
        //// Bezier 12 Drawing
        let bezier12Path = UIBezierPath()
        bezier12Path.move(to: CGPoint(x: 1488.72, y: 2014.31))
        bezier12Path.addCurve(to: CGPoint(x: 1400.96, y: 1722.87), controlPoint1: CGPoint(x: 1483.93, y: 1986.29), controlPoint2: CGPoint(x: 1426.63, y: 1768.41))
        bezier12Path.addCurve(to: CGPoint(x: 1401.24, y: 1752.64), controlPoint1: CGPoint(x: 1403.36, y: 1730.81), controlPoint2: CGPoint(x: 1404.63, y: 1740.68))
        bezier12Path.addCurve(to: CGPoint(x: 1168.03, y: 1933.53), controlPoint1: CGPoint(x: 1383.88, y: 1813.78), controlPoint2: CGPoint(x: 1228.05, y: 1891.82))
        bezier12Path.addCurve(to: CGPoint(x: 1075.39, y: 1985.09), controlPoint1: CGPoint(x: 1142.9, y: 1950.97), controlPoint2: CGPoint(x: 1103.08, y: 1977.76))
        bezier12Path.addCurve(to: CGPoint(x: 1155.98, y: 2129.27), controlPoint1: CGPoint(x: 1091.09, y: 2024.52), controlPoint2: CGPoint(x: 1147.79, y: 2110.9))
        bezier12Path.addCurve(to: CGPoint(x: 1220.04, y: 2339.91), controlPoint1: CGPoint(x: 1185.59, y: 2193.85), controlPoint2: CGPoint(x: 1204.38, y: 2271.94))
        bezier12Path.addCurve(to: CGPoint(x: 1278.01, y: 2501.41), controlPoint1: CGPoint(x: 1233.02, y: 2396.28), controlPoint2: CGPoint(x: 1251.01, y: 2450.36))
        bezier12Path.addCurve(to: CGPoint(x: 1312.91, y: 2556.52), controlPoint1: CGPoint(x: 1288.76, y: 2515.82), controlPoint2: CGPoint(x: 1299.92, y: 2549.98))
        bezier12Path.addCurve(to: CGPoint(x: 1397.73, y: 2453.18), controlPoint1: CGPoint(x: 1319.6, y: 2508.12), controlPoint2: CGPoint(x: 1351.28, y: 2466.74))
        bezier12Path.addCurve(to: CGPoint(x: 1535.24, y: 2508.21), controlPoint1: CGPoint(x: 1449.6, y: 2437.97), controlPoint2: CGPoint(x: 1504.63, y: 2461.89))
        bezier12Path.addCurve(to: CGPoint(x: 1542.65, y: 2499.63), controlPoint1: CGPoint(x: 1537.88, y: 2506.62), controlPoint2: CGPoint(x: 1540.36, y: 2503.87))
        bezier12Path.addCurve(to: CGPoint(x: 1488.72, y: 2014.31), controlPoint1: CGPoint(x: 1544.1, y: 2345.8), controlPoint2: CGPoint(x: 1514.51, y: 2165.82))
        bezier12Path.close()
        if bezier12Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier12Path.fill()
        
        
        //// Bezier 13 Drawing
        let bezier13Path = UIBezierPath()
        bezier13Path.move(to: CGPoint(x: 1401.24, y: 1752.64))
        bezier13Path.addCurve(to: CGPoint(x: 1400.96, y: 1722.87), controlPoint1: CGPoint(x: 1404.63, y: 1740.68), controlPoint2: CGPoint(x: 1403.36, y: 1730.81))
        bezier13Path.addCurve(to: CGPoint(x: 1394.05, y: 1705.33), controlPoint1: CGPoint(x: 1398.67, y: 1715.31), controlPoint2: CGPoint(x: 1395.35, y: 1709.51))
        bezier13Path.addCurve(to: CGPoint(x: 1379.82, y: 1753.19), controlPoint1: CGPoint(x: 1391, y: 1723.67), controlPoint2: CGPoint(x: 1386.39, y: 1739.98))
        bezier13Path.addCurve(to: CGPoint(x: 1376.19, y: 1759.85), controlPoint1: CGPoint(x: 1378.67, y: 1755.51), controlPoint2: CGPoint(x: 1377.46, y: 1757.73))
        bezier13Path.addCurve(to: CGPoint(x: 1294.24, y: 1830.68), controlPoint1: CGPoint(x: 1361.12, y: 1784.93), controlPoint2: CGPoint(x: 1330.27, y: 1808.23))
        bezier13Path.addCurve(to: CGPoint(x: 1148.76, y: 1917.4), controlPoint1: CGPoint(x: 1246.63, y: 1860.35), controlPoint2: CGPoint(x: 1189.99, y: 1888.54))
        bezier13Path.addCurve(to: CGPoint(x: 1119.69, y: 1940.53), controlPoint1: CGPoint(x: 1137.84, y: 1925.05), controlPoint2: CGPoint(x: 1127.99, y: 1932.75))
        bezier13Path.addCurve(to: CGPoint(x: 1076.13, y: 1963.62), controlPoint1: CGPoint(x: 1107.76, y: 1951.7), controlPoint2: CGPoint(x: 1093.35, y: 1960.63))
        bezier13Path.addCurve(to: CGPoint(x: 1065.71, y: 1964.68), controlPoint1: CGPoint(x: 1072.76, y: 1964.2), controlPoint2: CGPoint(x: 1069.29, y: 1964.58))
        bezier13Path.addLine(to: CGPoint(x: 1065.71, y: 1964.7))
        bezier13Path.addLine(to: CGPoint(x: 1065.71, y: 1964.79))
        bezier13Path.addCurve(to: CGPoint(x: 1063.43, y: 1964.73), controlPoint1: CGPoint(x: 1064.93, y: 1964.82), controlPoint2: CGPoint(x: 1064.2, y: 1964.73))
        bezier13Path.addCurve(to: CGPoint(x: 1063.1, y: 1964.74), controlPoint1: CGPoint(x: 1063.32, y: 1964.73), controlPoint2: CGPoint(x: 1063.21, y: 1964.74))
        bezier13Path.addCurve(to: CGPoint(x: 1061.14, y: 1964.79), controlPoint1: CGPoint(x: 1062.45, y: 1964.76), controlPoint2: CGPoint(x: 1061.81, y: 1964.82))
        bezier13Path.addLine(to: CGPoint(x: 1061.14, y: 1964.7))
        bezier13Path.addLine(to: CGPoint(x: 1061.14, y: 1964.68))
        bezier13Path.addCurve(to: CGPoint(x: 1007.16, y: 1940.53), controlPoint1: CGPoint(x: 1039.21, y: 1964.07), controlPoint2: CGPoint(x: 1021.42, y: 1953.88))
        bezier13Path.addCurve(to: CGPoint(x: 750.66, y: 1759.85), controlPoint1: CGPoint(x: 943.83, y: 1881.16), controlPoint2: CGPoint(x: 790.94, y: 1826.87))
        bezier13Path.addCurve(to: CGPoint(x: 742.95, y: 1743.96), controlPoint1: CGPoint(x: 747.77, y: 1755.05), controlPoint2: CGPoint(x: 745.22, y: 1749.72))
        bezier13Path.addCurve(to: CGPoint(x: 730.92, y: 1692.25), controlPoint1: CGPoint(x: 737.17, y: 1729.27), controlPoint2: CGPoint(x: 733.3, y: 1711.67))
        bezier13Path.addCurve(to: CGPoint(x: 730.45, y: 1691.35), controlPoint1: CGPoint(x: 730.77, y: 1691.95), controlPoint2: CGPoint(x: 730.6, y: 1691.65))
        bezier13Path.addCurve(to: CGPoint(x: 722.45, y: 1729.14), controlPoint1: CGPoint(x: 728.19, y: 1695.18), controlPoint2: CGPoint(x: 723.95, y: 1711.95))
        bezier13Path.addCurve(to: CGPoint(x: 722.68, y: 1752.63), controlPoint1: CGPoint(x: 721.73, y: 1737.33), controlPoint2: CGPoint(x: 721.64, y: 1745.61))
        bezier13Path.addCurve(to: CGPoint(x: 955.89, y: 1933.53), controlPoint1: CGPoint(x: 732.01, y: 1815.49), controlPoint2: CGPoint(x: 895.88, y: 1891.82))
        bezier13Path.addCurve(to: CGPoint(x: 1058.47, y: 1986.75), controlPoint1: CGPoint(x: 983.78, y: 1952.88), controlPoint2: CGPoint(x: 1030.94, y: 1983.75))
        bezier13Path.addCurve(to: CGPoint(x: 1062.62, y: 1987.01), controlPoint1: CGPoint(x: 1059.9, y: 1986.91), controlPoint2: CGPoint(x: 1061.3, y: 1987.01))
        bezier13Path.addCurve(to: CGPoint(x: 1075.4, y: 1985.08), controlPoint1: CGPoint(x: 1066.45, y: 1987.01), controlPoint2: CGPoint(x: 1070.76, y: 1986.31))
        bezier13Path.addCurve(to: CGPoint(x: 1168.03, y: 1933.53), controlPoint1: CGPoint(x: 1103.09, y: 1977.75), controlPoint2: CGPoint(x: 1142.91, y: 1950.97))
        bezier13Path.addCurve(to: CGPoint(x: 1401.24, y: 1752.64), controlPoint1: CGPoint(x: 1228.05, y: 1891.82), controlPoint2: CGPoint(x: 1383.88, y: 1813.77))
        bezier13Path.close()
        fillColor.setFill()
        bezier13Path.fill()
        
        
        
        
        
        
        //// Bezier 14 Drawing
        let bezier14Path = UIBezierPath()
        bezier14Path.move(to: CGPoint(x: 1371.1, y: 1393.03))
        bezier14Path.addCurve(to: CGPoint(x: 1369.52, y: 1393.86), controlPoint1: CGPoint(x: 1370.14, y: 1393.94), controlPoint2: CGPoint(x: 1369.52, y: 1393.86))
        bezier14Path.addCurve(to: CGPoint(x: 1319.61, y: 1346.4), controlPoint1: CGPoint(x: 1369.52, y: 1393.86), controlPoint2: CGPoint(x: 1351.91, y: 1372.7))
        bezier14Path.addCurve(to: CGPoint(x: 1200.6, y: 1275.82), controlPoint1: CGPoint(x: 1290.51, y: 1322.71), controlPoint2: CGPoint(x: 1249.9, y: 1295.13))
        bezier14Path.addCurve(to: CGPoint(x: 1063.02, y: 1251.77), controlPoint1: CGPoint(x: 1160.08, y: 1259.95), controlPoint2: CGPoint(x: 1113.69, y: 1249.68))
        bezier14Path.addCurve(to: CGPoint(x: 907.72, y: 1288.25), controlPoint1: CGPoint(x: 1004.01, y: 1254.21), controlPoint2: CGPoint(x: 951.72, y: 1269.03))
        bezier14Path.addCurve(to: CGPoint(x: 809.14, y: 1345.81), controlPoint1: CGPoint(x: 867.57, y: 1305.79), controlPoint2: CGPoint(x: 834.32, y: 1326.99))
        bezier14Path.addCurve(to: CGPoint(x: 755.32, y: 1392.9), controlPoint1: CGPoint(x: 778.66, y: 1368.59), controlPoint2: CGPoint(x: 760.02, y: 1387.86))
        bezier14Path.addCurve(to: CGPoint(x: 729.7, y: 1693.08), controlPoint1: CGPoint(x: 751.14, y: 1412.56), controlPoint2: CGPoint(x: 716.12, y: 1582.18))
        bezier14Path.addCurve(to: CGPoint(x: 749.5, y: 1760.77), controlPoint1: CGPoint(x: 733.02, y: 1720.15), controlPoint2: CGPoint(x: 739.23, y: 1743.73))
        bezier14Path.addCurve(to: CGPoint(x: 1006.77, y: 1941.71), controlPoint1: CGPoint(x: 789.9, y: 1827.88), controlPoint2: CGPoint(x: 943.25, y: 1882.25))
        bezier14Path.addCurve(to: CGPoint(x: 1060.91, y: 1965.89), controlPoint1: CGPoint(x: 1021.07, y: 1955.08), controlPoint2: CGPoint(x: 1038.91, y: 1965.28))
        bezier14Path.addLine(to: CGPoint(x: 1060.91, y: 1965.92))
        bezier14Path.addLine(to: CGPoint(x: 1060.91, y: 1966.01))
        bezier14Path.addCurve(to: CGPoint(x: 1063.2, y: 1965.95), controlPoint1: CGPoint(x: 1061.69, y: 1966.03), controlPoint2: CGPoint(x: 1062.43, y: 1965.95))
        bezier14Path.addCurve(to: CGPoint(x: 1065.49, y: 1966.01), controlPoint1: CGPoint(x: 1063.97, y: 1965.95), controlPoint2: CGPoint(x: 1064.71, y: 1966.04))
        bezier14Path.addLine(to: CGPoint(x: 1065.49, y: 1965.92))
        bezier14Path.addLine(to: CGPoint(x: 1065.49, y: 1965.89))
        bezier14Path.addCurve(to: CGPoint(x: 1119.63, y: 1941.71), controlPoint1: CGPoint(x: 1087.48, y: 1965.28), controlPoint2: CGPoint(x: 1105.33, y: 1955.08))
        bezier14Path.addCurve(to: CGPoint(x: 1376.9, y: 1760.77), controlPoint1: CGPoint(x: 1183.15, y: 1882.25), controlPoint2: CGPoint(x: 1336.5, y: 1827.89))
        bezier14Path.addCurve(to: CGPoint(x: 1394.81, y: 1706.18), controlPoint1: CGPoint(x: 1385.47, y: 1746.54), controlPoint2: CGPoint(x: 1391.22, y: 1727.75))
        bezier14Path.addCurve(to: CGPoint(x: 1371.1, y: 1393.03), controlPoint1: CGPoint(x: 1412.87, y: 1597.76), controlPoint2: CGPoint(x: 1376.37, y: 1418))
        bezier14Path.close()
        if bezier14Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier14Path.fill()
        
        
        
        
        //// Bezier 15 Drawing
        let bezier15Path = UIBezierPath()
        bezier15Path.move(to: CGPoint(x: 810.12, y: 1345.47))
        bezier15Path.addCurve(to: CGPoint(x: 908.4, y: 1287.99), controlPoint1: CGPoint(x: 835.23, y: 1326.68), controlPoint2: CGPoint(x: 868.37, y: 1305.51))
        bezier15Path.addCurve(to: CGPoint(x: 1063.24, y: 1251.56), controlPoint1: CGPoint(x: 952.28, y: 1268.8), controlPoint2: CGPoint(x: 1004.41, y: 1254))
        bezier15Path.addCurve(to: CGPoint(x: 1200.42, y: 1275.58), controlPoint1: CGPoint(x: 1113.76, y: 1249.47), controlPoint2: CGPoint(x: 1160.01, y: 1259.73))
        bezier15Path.addCurve(to: CGPoint(x: 1319.07, y: 1346.06), controlPoint1: CGPoint(x: 1249.56, y: 1294.86), controlPoint2: CGPoint(x: 1290.06, y: 1322.4))
        bezier15Path.addCurve(to: CGPoint(x: 1369.33, y: 1393.78), controlPoint1: CGPoint(x: 1351.28, y: 1372.32), controlPoint2: CGPoint(x: 1369.33, y: 1393.78))
        bezier15Path.addCurve(to: CGPoint(x: 1370.6, y: 1393.54), controlPoint1: CGPoint(x: 1369.33, y: 1393.78), controlPoint2: CGPoint(x: 1369.98, y: 1394))
        bezier15Path.addCurve(to: CGPoint(x: 1368.82, y: 1374.98), controlPoint1: CGPoint(x: 1371.87, y: 1392.61), controlPoint2: CGPoint(x: 1373.08, y: 1388.91))
        bezier15Path.addCurve(to: CGPoint(x: 1361.34, y: 1363.24), controlPoint1: CGPoint(x: 1368.03, y: 1372.42), controlPoint2: CGPoint(x: 1365.5, y: 1368.37))
        bezier15Path.addCurve(to: CGPoint(x: 1065.15, y: 1237.89), controlPoint1: CGPoint(x: 1331.68, y: 1326.67), controlPoint2: CGPoint(x: 1219.02, y: 1235.27))
        bezier15Path.addCurve(to: CGPoint(x: 765.81, y: 1363.21), controlPoint1: CGPoint(x: 918.77, y: 1240.39), controlPoint2: CGPoint(x: 798.47, y: 1335.01))
        bezier15Path.addCurve(to: CGPoint(x: 762.98, y: 1365.68), controlPoint1: CGPoint(x: 764.78, y: 1364.1), controlPoint2: CGPoint(x: 763.83, y: 1364.93))
        bezier15Path.addCurve(to: CGPoint(x: 757.13, y: 1370.98), controlPoint1: CGPoint(x: 759.58, y: 1368.67), controlPoint2: CGPoint(x: 757.59, y: 1370.54))
        bezier15Path.addCurve(to: CGPoint(x: 757.02, y: 1371.08), controlPoint1: CGPoint(x: 757.06, y: 1371.04), controlPoint2: CGPoint(x: 757.02, y: 1371.08))
        bezier15Path.addLine(to: CGPoint(x: 756.96, y: 1371.87))
        bezier15Path.addLine(to: CGPoint(x: 756.81, y: 1373.91))
        bezier15Path.addLine(to: CGPoint(x: 755.27, y: 1393.78))
        bezier15Path.addCurve(to: CGPoint(x: 756.46, y: 1392.49), controlPoint1: CGPoint(x: 755.27, y: 1393.78), controlPoint2: CGPoint(x: 755.68, y: 1393.33))
        bezier15Path.addCurve(to: CGPoint(x: 810.12, y: 1345.47), controlPoint1: CGPoint(x: 761.15, y: 1387.46), controlPoint2: CGPoint(x: 779.73, y: 1368.22))
        bezier15Path.close()
        fillColor.setFill()
        bezier15Path.fill()
        
        
        
        
        //// Oval 7 Drawing
        let oval7Path = UIBezierPath(ovalIn: CGRect(x: 1051.3, y: 1510.94, width: 28, height: 51.9))
        if oval7Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval7Path.fill()
        strokeColor.setStroke()
        oval7Path.lineWidth = 7
        oval7Path.stroke()
        
        
        //// Group 16
        //// Bezier 16 Drawing
        let bezier16Path = UIBezierPath()
        bezier16Path.move(to: CGPoint(x: 959.29, y: 517.33))
        bezier16Path.addCurve(to: CGPoint(x: 951.91, y: 510.64), controlPoint1: CGPoint(x: 956.85, y: 515.11), controlPoint2: CGPoint(x: 954.3, y: 513.11))
        bezier16Path.addLine(to: CGPoint(x: 959.27, y: 517.41))
        bezier16Path.addCurve(to: CGPoint(x: 959.29, y: 517.33), controlPoint1: CGPoint(x: 959.27, y: 517.39), controlPoint2: CGPoint(x: 959.29, y: 517.37))
        bezier16Path.close()
        if bezier16Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier16Path.fill()
        
        
        //// Group 17
        //// Bezier 17 Drawing
        let bezier17Path = UIBezierPath()
        bezier17Path.move(to: CGPoint(x: 1265.14, y: 267.62))
        bezier17Path.addCurve(to: CGPoint(x: 1245.48, y: 262.74), controlPoint1: CGPoint(x: 1259.09, y: 263.6), controlPoint2: CGPoint(x: 1252.07, y: 262.71))
        bezier17Path.addCurve(to: CGPoint(x: 1229.11, y: 160.36), controlPoint1: CGPoint(x: 1244.29, y: 226.28), controlPoint2: CGPoint(x: 1239.35, y: 187.43))
        bezier17Path.addCurve(to: CGPoint(x: 1064.74, y: 62.26), controlPoint1: CGPoint(x: 1206.41, y: 100.43), controlPoint2: CGPoint(x: 1142.72, y: 61.34))
        bezier17Path.addCurve(to: CGPoint(x: 900.37, y: 160.36), controlPoint1: CGPoint(x: 986.76, y: 61.34), controlPoint2: CGPoint(x: 923.08, y: 100.43))
        bezier17Path.addCurve(to: CGPoint(x: 884.01, y: 262.75), controlPoint1: CGPoint(x: 890.12, y: 187.43), controlPoint2: CGPoint(x: 885.19, y: 226.28))
        bezier17Path.addCurve(to: CGPoint(x: 865.46, y: 267.62), controlPoint1: CGPoint(x: 877.75, y: 262.82), controlPoint2: CGPoint(x: 871.19, y: 263.83))
        bezier17Path.addCurve(to: CGPoint(x: 870.97, y: 385.87), controlPoint1: CGPoint(x: 840.34, y: 284.37), controlPoint2: CGPoint(x: 857.05, y: 365.93))
        bezier17Path.addCurve(to: CGPoint(x: 907.7, y: 405.17), controlPoint1: CGPoint(x: 885.58, y: 406.78), controlPoint2: CGPoint(x: 895.8, y: 396.61))
        bezier17Path.addCurve(to: CGPoint(x: 958.48, y: 495.38), controlPoint1: CGPoint(x: 918.24, y: 431.41), controlPoint2: CGPoint(x: 933.68, y: 461.07))
        bezier17Path.addCurve(to: CGPoint(x: 1093.96, y: 538.73), controlPoint1: CGPoint(x: 996.03, y: 534.73), controlPoint2: CGPoint(x: 1043.09, y: 543.01))
        bezier17Path.addCurve(to: CGPoint(x: 1167.9, y: 498.16), controlPoint1: CGPoint(x: 1121.03, y: 533.17), controlPoint2: CGPoint(x: 1146.09, y: 521.02))
        bezier17Path.addCurve(to: CGPoint(x: 1168.18, y: 498.72), controlPoint1: CGPoint(x: 1168, y: 498.35), controlPoint2: CGPoint(x: 1168.09, y: 498.53))
        bezier17Path.addCurve(to: CGPoint(x: 1170.97, y: 495.38), controlPoint1: CGPoint(x: 1169.15, y: 497.64), controlPoint2: CGPoint(x: 1170.11, y: 496.56))
        bezier17Path.addCurve(to: CGPoint(x: 1221.24, y: 406.49), controlPoint1: CGPoint(x: 1195.37, y: 461.64), controlPoint2: CGPoint(x: 1210.7, y: 432.4))
        bezier17Path.addCurve(to: CGPoint(x: 1259.63, y: 385.87), controlPoint1: CGPoint(x: 1233.86, y: 395.6), controlPoint2: CGPoint(x: 1244.35, y: 407.75))
        bezier17Path.addCurve(to: CGPoint(x: 1265.14, y: 267.62), controlPoint1: CGPoint(x: 1273.57, y: 365.93), controlPoint2: CGPoint(x: 1290.27, y: 284.36))
        bezier17Path.close()
        if bezier17Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier17Path.fill()
        
        
        //// Group 18
        //// Group 19
        //// Group 20
        //// Bezier 18 Drawing
        let bezier18Path = UIBezierPath()
        bezier18Path.move(to: CGPoint(x: 1388.64, y: 922.67))
        bezier18Path.addCurve(to: CGPoint(x: 1388.39, y: 920.68), controlPoint1: CGPoint(x: 1388.56, y: 922), controlPoint2: CGPoint(x: 1388.45, y: 921.34))
        bezier18Path.addCurve(to: CGPoint(x: 1384.37, y: 895.16), controlPoint1: CGPoint(x: 1387.33, y: 912.08), controlPoint2: CGPoint(x: 1385.95, y: 903.6))
        bezier18Path.addCurve(to: CGPoint(x: 1383.23, y: 889.19), controlPoint1: CGPoint(x: 1383.98, y: 893.16), controlPoint2: CGPoint(x: 1383.64, y: 891.18))
        bezier18Path.addCurve(to: CGPoint(x: 1375.32, y: 858.73), controlPoint1: CGPoint(x: 1381.48, y: 880.66), controlPoint2: CGPoint(x: 1375.91, y: 860.51))
        bezier18Path.addCurve(to: CGPoint(x: 1366.31, y: 834.03), controlPoint1: CGPoint(x: 1372.73, y: 850.45), controlPoint2: CGPoint(x: 1366.4, y: 834.23))
        bezier18Path.addCurve(to: CGPoint(x: 1222.19, y: 661.54), controlPoint1: CGPoint(x: 1307.61, y: 719.28), controlPoint2: CGPoint(x: 1261.59, y: 686.85))
        bezier18Path.addCurve(to: CGPoint(x: 1204.24, y: 649.94), controlPoint1: CGPoint(x: 1216.05, y: 657.6), controlPoint2: CGPoint(x: 1210.08, y: 653.83))
        bezier18Path.addCurve(to: CGPoint(x: 1203.51, y: 662.73), controlPoint1: CGPoint(x: 1205.53, y: 653.83), controlPoint2: CGPoint(x: 1205.48, y: 658.1))
        bezier18Path.addCurve(to: CGPoint(x: 1064.57, y: 730.99), controlPoint1: CGPoint(x: 1188.49, y: 697.85), controlPoint2: CGPoint(x: 1113.23, y: 731.47))
        bezier18Path.addLine(to: CGPoint(x: 1064.57, y: 731.01))
        bezier18Path.addCurve(to: CGPoint(x: 1063.92, y: 730.99), controlPoint1: CGPoint(x: 1064.34, y: 731.02), controlPoint2: CGPoint(x: 1064.14, y: 730.99))
        bezier18Path.addCurve(to: CGPoint(x: 1063.25, y: 731.01), controlPoint1: CGPoint(x: 1063.7, y: 730.99), controlPoint2: CGPoint(x: 1063.46, y: 731.02))
        bezier18Path.addLine(to: CGPoint(x: 1063.25, y: 730.99))
        bezier18Path.addCurve(to: CGPoint(x: 924.31, y: 662.73), controlPoint1: CGPoint(x: 1014.57, y: 731.47), controlPoint2: CGPoint(x: 939.33, y: 697.85))
        bezier18Path.addCurve(to: CGPoint(x: 923.61, y: 649.84), controlPoint1: CGPoint(x: 922.32, y: 658.06), controlPoint2: CGPoint(x: 922.28, y: 653.76))
        bezier18Path.addCurve(to: CGPoint(x: 923.35, y: 650.01), controlPoint1: CGPoint(x: 923.52, y: 649.9), controlPoint2: CGPoint(x: 923.44, y: 649.95))
        bezier18Path.addCurve(to: CGPoint(x: 923.25, y: 649.65), controlPoint1: CGPoint(x: 923.32, y: 649.89), controlPoint2: CGPoint(x: 923.28, y: 649.78))
        bezier18Path.addLine(to: CGPoint(x: 923.24, y: 649.65))
        bezier18Path.addCurve(to: CGPoint(x: 760.73, y: 834.03), controlPoint1: CGPoint(x: 879.82, y: 678.59), controlPoint2: CGPoint(x: 828.8, y: 700.96))
        bezier18Path.addCurve(to: CGPoint(x: 751.71, y: 858.73), controlPoint1: CGPoint(x: 760.64, y: 834.23), controlPoint2: CGPoint(x: 754.31, y: 850.45))
        bezier18Path.addCurve(to: CGPoint(x: 743.81, y: 889.19), controlPoint1: CGPoint(x: 751.13, y: 860.51), controlPoint2: CGPoint(x: 745.56, y: 880.66))
        bezier18Path.addCurve(to: CGPoint(x: 742.66, y: 895.16), controlPoint1: CGPoint(x: 743.4, y: 891.18), controlPoint2: CGPoint(x: 743.06, y: 893.16))
        bezier18Path.addCurve(to: CGPoint(x: 738.65, y: 920.68), controlPoint1: CGPoint(x: 741.09, y: 903.6), controlPoint2: CGPoint(x: 739.71, y: 912.08))
        bezier18Path.addCurve(to: CGPoint(x: 738.4, y: 922.67), controlPoint1: CGPoint(x: 738.58, y: 921.34), controlPoint2: CGPoint(x: 738.48, y: 922))
        bezier18Path.addCurve(to: CGPoint(x: 736.08, y: 949.93), controlPoint1: CGPoint(x: 737.34, y: 931.74), controlPoint2: CGPoint(x: 736.62, y: 940.84))
        bezier18Path.addCurve(to: CGPoint(x: 735.73, y: 955.87), controlPoint1: CGPoint(x: 735.95, y: 951.9), controlPoint2: CGPoint(x: 735.84, y: 953.88))
        bezier18Path.addCurve(to: CGPoint(x: 736.29, y: 959.03), controlPoint1: CGPoint(x: 735.71, y: 956.27), controlPoint2: CGPoint(x: 735.91, y: 957.36))
        bezier18Path.addCurve(to: CGPoint(x: 735.73, y: 982.3), controlPoint1: CGPoint(x: 735.98, y: 966.84), controlPoint2: CGPoint(x: 735.74, y: 974.62))
        bezier18Path.addCurve(to: CGPoint(x: 735.77, y: 987.2), controlPoint1: CGPoint(x: 735.73, y: 983.95), controlPoint2: CGPoint(x: 735.76, y: 985.56))
        bezier18Path.addCurve(to: CGPoint(x: 738.44, y: 1040.03), controlPoint1: CGPoint(x: 735.91, y: 1005.76), controlPoint2: CGPoint(x: 736.89, y: 1023.58))
        bezier18Path.addCurve(to: CGPoint(x: 738.71, y: 1042.97), controlPoint1: CGPoint(x: 738.53, y: 1041.03), controlPoint2: CGPoint(x: 738.61, y: 1042))
        bezier18Path.addCurve(to: CGPoint(x: 741.56, y: 1066.59), controlPoint1: CGPoint(x: 739.53, y: 1051.26), controlPoint2: CGPoint(x: 740.48, y: 1059.15))
        bezier18Path.addCurve(to: CGPoint(x: 741.6, y: 1067.02), controlPoint1: CGPoint(x: 741.56, y: 1066.71), controlPoint2: CGPoint(x: 741.58, y: 1066.89))
        bezier18Path.addCurve(to: CGPoint(x: 762.43, y: 1350.6), controlPoint1: CGPoint(x: 743.84, y: 1096.07), controlPoint2: CGPoint(x: 796.79, y: 1250.06))
        bezier18Path.addCurve(to: CGPoint(x: 757.13, y: 1370.98), controlPoint1: CGPoint(x: 759.41, y: 1361.39), controlPoint2: CGPoint(x: 757.79, y: 1367.67))
        bezier18Path.addCurve(to: CGPoint(x: 762.98, y: 1365.68), controlPoint1: CGPoint(x: 757.58, y: 1370.55), controlPoint2: CGPoint(x: 759.58, y: 1368.67))
        bezier18Path.addCurve(to: CGPoint(x: 765.81, y: 1363.21), controlPoint1: CGPoint(x: 763.97, y: 1364.43), controlPoint2: CGPoint(x: 764.95, y: 1363.47))
        bezier18Path.addCurve(to: CGPoint(x: 1065.15, y: 1237.9), controlPoint1: CGPoint(x: 798.47, y: 1335.01), controlPoint2: CGPoint(x: 918.77, y: 1240.4))
        bezier18Path.addCurve(to: CGPoint(x: 1361.34, y: 1363.25), controlPoint1: CGPoint(x: 1219.02, y: 1235.28), controlPoint2: CGPoint(x: 1331.67, y: 1326.67))
        bezier18Path.addCurve(to: CGPoint(x: 1364.61, y: 1350.6), controlPoint1: CGPoint(x: 1366.64, y: 1367.86), controlPoint2: CGPoint(x: 1376.55, y: 1393.34))
        bezier18Path.addCurve(to: CGPoint(x: 1353.34, y: 1255.49), controlPoint1: CGPoint(x: 1354.79, y: 1321.87), controlPoint2: CGPoint(x: 1352.12, y: 1288.78))
        bezier18Path.addCurve(to: CGPoint(x: 1359.84, y: 1191.02), controlPoint1: CGPoint(x: 1354.93, y: 1236.03), controlPoint2: CGPoint(x: 1357.19, y: 1214.04))
        bezier18Path.addCurve(to: CGPoint(x: 1385.44, y: 1067.02), controlPoint1: CGPoint(x: 1368.99, y: 1132.39), controlPoint2: CGPoint(x: 1384.26, y: 1082.34))
        bezier18Path.addCurve(to: CGPoint(x: 1385.47, y: 1066.59), controlPoint1: CGPoint(x: 1385.46, y: 1066.89), controlPoint2: CGPoint(x: 1385.47, y: 1066.71))
        bezier18Path.addCurve(to: CGPoint(x: 1388.32, y: 1042.97), controlPoint1: CGPoint(x: 1386.55, y: 1059.15), controlPoint2: CGPoint(x: 1387.5, y: 1051.26))
        bezier18Path.addCurve(to: CGPoint(x: 1388.6, y: 1040.04), controlPoint1: CGPoint(x: 1388.43, y: 1042), controlPoint2: CGPoint(x: 1388.51, y: 1041.03))
        bezier18Path.addCurve(to: CGPoint(x: 1391.26, y: 987.2), controlPoint1: CGPoint(x: 1390.15, y: 1023.58), controlPoint2: CGPoint(x: 1391.12, y: 1005.76))
        bezier18Path.addCurve(to: CGPoint(x: 1391.31, y: 982.3), controlPoint1: CGPoint(x: 1391.28, y: 985.56), controlPoint2: CGPoint(x: 1391.31, y: 983.95))
        bezier18Path.addCurve(to: CGPoint(x: 1390.79, y: 961.17), controlPoint1: CGPoint(x: 1391.3, y: 975.33), controlPoint2: CGPoint(x: 1391.05, y: 968.25))
        bezier18Path.addCurve(to: CGPoint(x: 1391.31, y: 955.87), controlPoint1: CGPoint(x: 1391.15, y: 958.27), controlPoint2: CGPoint(x: 1391.33, y: 956.44))
        bezier18Path.addCurve(to: CGPoint(x: 1391.14, y: 952.99), controlPoint1: CGPoint(x: 1391.25, y: 954.91), controlPoint2: CGPoint(x: 1391.19, y: 953.95))
        bezier18Path.addCurve(to: CGPoint(x: 1390.96, y: 949.94), controlPoint1: CGPoint(x: 1391.08, y: 951.97), controlPoint2: CGPoint(x: 1391.02, y: 950.95))
        bezier18Path.addCurve(to: CGPoint(x: 1388.64, y: 922.67), controlPoint1: CGPoint(x: 1390.42, y: 940.84), controlPoint2: CGPoint(x: 1389.7, y: 931.74))
        bezier18Path.close()
        if bezier18Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier18Path.fill()
        
        
        //// Bezier 19 Drawing
        let bezier19Path = UIBezierPath()
        bezier19Path.move(to: CGPoint(x: 924.31, y: 662.73))
        bezier19Path.addCurve(to: CGPoint(x: 1063.25, y: 730.99), controlPoint1: CGPoint(x: 939.33, y: 697.85), controlPoint2: CGPoint(x: 1014.58, y: 731.47))
        bezier19Path.addLine(to: CGPoint(x: 1063.25, y: 731.01))
        bezier19Path.addCurve(to: CGPoint(x: 1063.92, y: 730.99), controlPoint1: CGPoint(x: 1063.46, y: 731.02), controlPoint2: CGPoint(x: 1063.7, y: 730.99))
        bezier19Path.addCurve(to: CGPoint(x: 1064.57, y: 731.01), controlPoint1: CGPoint(x: 1064.14, y: 730.99), controlPoint2: CGPoint(x: 1064.35, y: 731.02))
        bezier19Path.addLine(to: CGPoint(x: 1064.57, y: 730.99))
        bezier19Path.addCurve(to: CGPoint(x: 1203.51, y: 662.73), controlPoint1: CGPoint(x: 1113.23, y: 731.47), controlPoint2: CGPoint(x: 1188.49, y: 697.85))
        bezier19Path.addCurve(to: CGPoint(x: 1204.24, y: 649.94), controlPoint1: CGPoint(x: 1205.48, y: 658.1), controlPoint2: CGPoint(x: 1205.53, y: 653.83))
        bezier19Path.addCurve(to: CGPoint(x: 1185.02, y: 631.64), controlPoint1: CGPoint(x: 1201.67, y: 642.24), controlPoint2: CGPoint(x: 1193.81, y: 636.05))
        bezier19Path.addCurve(to: CGPoint(x: 1185.03, y: 632.12), controlPoint1: CGPoint(x: 1185.03, y: 631.8), controlPoint2: CGPoint(x: 1185.02, y: 631.96))
        bezier19Path.addCurve(to: CGPoint(x: 1187.24, y: 635.8), controlPoint1: CGPoint(x: 1185.73, y: 633.3), controlPoint2: CGPoint(x: 1186.47, y: 634.51))
        bezier19Path.addCurve(to: CGPoint(x: 1173.27, y: 673.65), controlPoint1: CGPoint(x: 1201.54, y: 655.31), controlPoint2: CGPoint(x: 1184.9, y: 664.39))
        bezier19Path.addCurve(to: CGPoint(x: 1097.91, y: 709.37), controlPoint1: CGPoint(x: 1151.1, y: 691.32), controlPoint2: CGPoint(x: 1125.74, y: 704.56))
        bezier19Path.addCurve(to: CGPoint(x: 1062.45, y: 711.63), controlPoint1: CGPoint(x: 1082.77, y: 711.99), controlPoint2: CGPoint(x: 1074.13, y: 711.51))
        bezier19Path.addLine(to: CGPoint(x: 1062.45, y: 711.54))
        bezier19Path.addCurve(to: CGPoint(x: 1028.16, y: 709.3), controlPoint1: CGPoint(x: 1051.37, y: 711.47), controlPoint2: CGPoint(x: 1042.76, y: 711.82))
        bezier19Path.addCurve(to: CGPoint(x: 952.8, y: 673.56), controlPoint1: CGPoint(x: 1000.33, y: 704.48), controlPoint2: CGPoint(x: 974.98, y: 691.23))
        bezier19Path.addCurve(to: CGPoint(x: 938.84, y: 635.72), controlPoint1: CGPoint(x: 941.18, y: 664.3), controlPoint2: CGPoint(x: 924.54, y: 655.23))
        bezier19Path.addCurve(to: CGPoint(x: 940.59, y: 632.81), controlPoint1: CGPoint(x: 939.44, y: 634.71), controlPoint2: CGPoint(x: 940.03, y: 633.75))
        bezier19Path.addCurve(to: CGPoint(x: 923.61, y: 649.84), controlPoint1: CGPoint(x: 932.75, y: 637.1), controlPoint2: CGPoint(x: 925.99, y: 642.84))
        bezier19Path.addCurve(to: CGPoint(x: 924.31, y: 662.73), controlPoint1: CGPoint(x: 922.28, y: 653.75), controlPoint2: CGPoint(x: 922.31, y: 658.06))
        bezier19Path.close()
        fillColor.setFill()
        bezier19Path.fill()
        
        
        
        
        //// Bezier 20 Drawing
        let bezier20Path = UIBezierPath()
        bezier20Path.move(to: CGPoint(x: 952.8, y: 673.56))
        bezier20Path.addCurve(to: CGPoint(x: 1028.17, y: 709.3), controlPoint1: CGPoint(x: 974.98, y: 691.23), controlPoint2: CGPoint(x: 1000.33, y: 704.48))
        bezier20Path.addCurve(to: CGPoint(x: 1062.45, y: 711.54), controlPoint1: CGPoint(x: 1042.76, y: 711.82), controlPoint2: CGPoint(x: 1051.37, y: 711.47))
        bezier20Path.addLine(to: CGPoint(x: 1062.45, y: 711.63))
        bezier20Path.addCurve(to: CGPoint(x: 1097.92, y: 709.36), controlPoint1: CGPoint(x: 1074.13, y: 711.51), controlPoint2: CGPoint(x: 1082.77, y: 711.99))
        bezier20Path.addCurve(to: CGPoint(x: 1173.28, y: 673.65), controlPoint1: CGPoint(x: 1125.74, y: 704.56), controlPoint2: CGPoint(x: 1151.1, y: 691.32))
        bezier20Path.addCurve(to: CGPoint(x: 1187.24, y: 635.8), controlPoint1: CGPoint(x: 1184.9, y: 664.39), controlPoint2: CGPoint(x: 1201.54, y: 655.31))
        bezier20Path.addCurve(to: CGPoint(x: 1185.03, y: 632.12), controlPoint1: CGPoint(x: 1186.47, y: 634.51), controlPoint2: CGPoint(x: 1185.73, y: 633.3))
        bezier20Path.addCurve(to: CGPoint(x: 1176.13, y: 603.87), controlPoint1: CGPoint(x: 1180.05, y: 623.77), controlPoint2: CGPoint(x: 1176.76, y: 617.39))
        bezier20Path.addCurve(to: CGPoint(x: 1176.13, y: 603.84), controlPoint1: CGPoint(x: 1176.13, y: 603.87), controlPoint2: CGPoint(x: 1176.13, y: 603.85))
        bezier20Path.addCurve(to: CGPoint(x: 1176.14, y: 603.87), controlPoint1: CGPoint(x: 1176.13, y: 603.85), controlPoint2: CGPoint(x: 1176.13, y: 603.87))
        bezier20Path.addCurve(to: CGPoint(x: 1175.02, y: 515.46), controlPoint1: CGPoint(x: 1176.3, y: 574.35), controlPoint2: CGPoint(x: 1182.84, y: 544.29))
        bezier20Path.addLine(to: CGPoint(x: 1174.31, y: 513.33))
        bezier20Path.addCurve(to: CGPoint(x: 1095.86, y: 556.18), controlPoint1: CGPoint(x: 1151.13, y: 537.36), controlPoint2: CGPoint(x: 1124.58, y: 550.24))
        bezier20Path.addCurve(to: CGPoint(x: 959.29, y: 517.33), controlPoint1: CGPoint(x: 1045.09, y: 560.46), controlPoint2: CGPoint(x: 998.05, y: 552.56))
        bezier20Path.addCurve(to: CGPoint(x: 952.47, y: 511.18), controlPoint1: CGPoint(x: 957.03, y: 515.27), controlPoint2: CGPoint(x: 954.7, y: 513.4))
        bezier20Path.addLine(to: CGPoint(x: 951.05, y: 515.39))
        bezier20Path.addCurve(to: CGPoint(x: 949.94, y: 603.79), controlPoint1: CGPoint(x: 943.24, y: 544.2), controlPoint2: CGPoint(x: 949.78, y: 574.27))
        bezier20Path.addCurve(to: CGPoint(x: 949.96, y: 603.77), controlPoint1: CGPoint(x: 949.96, y: 603.79), controlPoint2: CGPoint(x: 949.96, y: 603.77))
        bezier20Path.addLine(to: CGPoint(x: 949.96, y: 603.79))
        bezier20Path.addCurve(to: CGPoint(x: 940.6, y: 632.8), controlPoint1: CGPoint(x: 949.31, y: 617.74), controlPoint2: CGPoint(x: 945.83, y: 624.09))
        bezier20Path.addCurve(to: CGPoint(x: 938.84, y: 635.72), controlPoint1: CGPoint(x: 940.03, y: 633.74), controlPoint2: CGPoint(x: 939.45, y: 634.7))
        bezier20Path.addCurve(to: CGPoint(x: 952.8, y: 673.56), controlPoint1: CGPoint(x: 924.55, y: 655.22), controlPoint2: CGPoint(x: 941.18, y: 664.3))
        bezier20Path.close()
        if bezier20Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier20Path.fill()
        
        
        
        
        //// Bezier 21 Drawing
        let bezier21Path = UIBezierPath()
        bezier21Path.move(to: CGPoint(x: 1095.86, y: 556.18))
        bezier21Path.addCurve(to: CGPoint(x: 1174.31, y: 513.33), controlPoint1: CGPoint(x: 1124.58, y: 550.24), controlPoint2: CGPoint(x: 1151.13, y: 537.36))
        bezier21Path.addCurve(to: CGPoint(x: 1174.44, y: 513.2), controlPoint1: CGPoint(x: 1174.35, y: 513.29), controlPoint2: CGPoint(x: 1174.4, y: 513.24))
        bezier21Path.addCurve(to: CGPoint(x: 1169.25, y: 500.89), controlPoint1: CGPoint(x: 1173.06, y: 509.06), controlPoint2: CGPoint(x: 1171.31, y: 504.98))
        bezier21Path.addCurve(to: CGPoint(x: 1168.18, y: 498.72), controlPoint1: CGPoint(x: 1168.88, y: 500.17), controlPoint2: CGPoint(x: 1168.55, y: 499.44))
        bezier21Path.addCurve(to: CGPoint(x: 1167.9, y: 498.16), controlPoint1: CGPoint(x: 1168.09, y: 498.53), controlPoint2: CGPoint(x: 1168, y: 498.35))
        bezier21Path.addCurve(to: CGPoint(x: 1093.97, y: 538.73), controlPoint1: CGPoint(x: 1146.09, y: 521.02), controlPoint2: CGPoint(x: 1121.03, y: 533.16))
        bezier21Path.addCurve(to: CGPoint(x: 958.49, y: 495.37), controlPoint1: CGPoint(x: 1043.09, y: 543), controlPoint2: CGPoint(x: 996.03, y: 534.72))
        bezier21Path.addCurve(to: CGPoint(x: 951.91, y: 510.64), controlPoint1: CGPoint(x: 955.69, y: 500.41), controlPoint2: CGPoint(x: 953.62, y: 505.51))
        bezier21Path.addCurve(to: CGPoint(x: 952.47, y: 511.18), controlPoint1: CGPoint(x: 952.1, y: 510.82), controlPoint2: CGPoint(x: 952.28, y: 510.99))
        bezier21Path.addCurve(to: CGPoint(x: 959.29, y: 517.33), controlPoint1: CGPoint(x: 954.7, y: 513.4), controlPoint2: CGPoint(x: 957.03, y: 515.27))
        bezier21Path.addCurve(to: CGPoint(x: 1095.86, y: 556.18), controlPoint1: CGPoint(x: 998.05, y: 552.56), controlPoint2: CGPoint(x: 1045.09, y: 560.46))
        bezier21Path.close()
        fillColor.setFill()
        bezier21Path.fill()
        
        
        
        
        
        
        
        
        //// Group 21
        //// Bezier 22 Drawing
        let bezier22Path = UIBezierPath()
        bezier22Path.move(to: CGPoint(x: 817.06, y: 711.62))
        bezier22Path.addCurve(to: CGPoint(x: 863.38, y: 663.45), controlPoint1: CGPoint(x: 830.27, y: 693.39), controlPoint2: CGPoint(x: 851.66, y: 682.92))
        bezier22Path.addCurve(to: CGPoint(x: 864.42, y: 643.44), controlPoint1: CGPoint(x: 870.3, y: 651.91), controlPoint2: CGPoint(x: 871.64, y: 646.65))
        bezier22Path.addCurve(to: CGPoint(x: 864.45, y: 643.35), controlPoint1: CGPoint(x: 864.44, y: 643.38), controlPoint2: CGPoint(x: 864.45, y: 643.35))
        bezier22Path.addLine(to: CGPoint(x: 904.45, y: 661.54))
        bezier22Path.addCurve(to: CGPoint(x: 760.33, y: 834.03), controlPoint1: CGPoint(x: 865.05, y: 686.84), controlPoint2: CGPoint(x: 819.03, y: 719.27))
        bezier22Path.addCurve(to: CGPoint(x: 751.32, y: 858.72), controlPoint1: CGPoint(x: 760.24, y: 834.23), controlPoint2: CGPoint(x: 753.91, y: 850.45))
        bezier22Path.addCurve(to: CGPoint(x: 743.41, y: 889.19), controlPoint1: CGPoint(x: 750.73, y: 860.51), controlPoint2: CGPoint(x: 745.17, y: 880.66))
        bezier22Path.addCurve(to: CGPoint(x: 742.27, y: 895.15), controlPoint1: CGPoint(x: 743, y: 891.17), controlPoint2: CGPoint(x: 742.66, y: 893.16))
        bezier22Path.addCurve(to: CGPoint(x: 738.25, y: 920.68), controlPoint1: CGPoint(x: 740.7, y: 903.6), controlPoint2: CGPoint(x: 739.31, y: 912.08))
        bezier22Path.addCurve(to: CGPoint(x: 738, y: 922.67), controlPoint1: CGPoint(x: 738.19, y: 921.34), controlPoint2: CGPoint(x: 738.08, y: 922))
        bezier22Path.addCurve(to: CGPoint(x: 735.68, y: 949.93), controlPoint1: CGPoint(x: 736.94, y: 931.73), controlPoint2: CGPoint(x: 736.22, y: 940.83))
        bezier22Path.addCurve(to: CGPoint(x: 735.5, y: 952.98), controlPoint1: CGPoint(x: 735.62, y: 950.94), controlPoint2: CGPoint(x: 735.56, y: 951.96))
        bezier22Path.addCurve(to: CGPoint(x: 703.98, y: 957.15), controlPoint1: CGPoint(x: 728.83, y: 980.86), controlPoint2: CGPoint(x: 702.2, y: 981.06))
        bezier22Path.addCurve(to: CGPoint(x: 762.11, y: 798.55), controlPoint1: CGPoint(x: 722.79, y: 904.08), controlPoint2: CGPoint(x: 735.88, y: 848.84))
        bezier22Path.addCurve(to: CGPoint(x: 817.06, y: 711.62), controlPoint1: CGPoint(x: 776.41, y: 767), controlPoint2: CGPoint(x: 795.7, y: 738.68))
        bezier22Path.close()
        fillColor.setFill()
        bezier22Path.fill()
        
        
        //// Group 22
        //// Bezier 23 Drawing
        let bezier23Path = UIBezierPath()
        bezier23Path.move(to: CGPoint(x: 420.52, y: 1124.89))
        bezier23Path.addCurve(to: CGPoint(x: 423.37, y: 1078.68), controlPoint1: CGPoint(x: 418.87, y: 1109.92), controlPoint2: CGPoint(x: 416.88, y: 1106.17))
        bezier23Path.addCurve(to: CGPoint(x: 443.59, y: 1041.55), controlPoint1: CGPoint(x: 428.15, y: 1067.2), controlPoint2: CGPoint(x: 434.96, y: 1055.29))
        bezier23Path.addCurve(to: CGPoint(x: 607.59, y: 752.23), controlPoint1: CGPoint(x: 498.09, y: 945.02), controlPoint2: CGPoint(x: 550.83, y: 847.42))
        bezier23Path.addCurve(to: CGPoint(x: 848.32, y: 639.82), controlPoint1: CGPoint(x: 661.58, y: 661.71), controlPoint2: CGPoint(x: 741.25, y: 619.88))
        bezier23Path.addCurve(to: CGPoint(x: 864.42, y: 643.44), controlPoint1: CGPoint(x: 855.78, y: 640.87), controlPoint2: CGPoint(x: 861.04, y: 641.93))
        bezier23Path.addCurve(to: CGPoint(x: 863.38, y: 663.45), controlPoint1: CGPoint(x: 871.65, y: 646.65), controlPoint2: CGPoint(x: 870.3, y: 651.91))
        bezier23Path.addCurve(to: CGPoint(x: 817.06, y: 711.62), controlPoint1: CGPoint(x: 851.66, y: 682.92), controlPoint2: CGPoint(x: 830.27, y: 693.38))
        bezier23Path.addCurve(to: CGPoint(x: 762.11, y: 798.55), controlPoint1: CGPoint(x: 795.7, y: 738.68), controlPoint2: CGPoint(x: 776.41, y: 767))
        bezier23Path.addCurve(to: CGPoint(x: 703.99, y: 957.15), controlPoint1: CGPoint(x: 735.89, y: 848.85), controlPoint2: CGPoint(x: 722.79, y: 904.08))
        bezier23Path.addCurve(to: CGPoint(x: 680.15, y: 1014.17), controlPoint1: CGPoint(x: 697.11, y: 976.56), controlPoint2: CGPoint(x: 689.47, y: 995.69))
        bezier23Path.addCurve(to: CGPoint(x: 542.97, y: 1187.61), controlPoint1: CGPoint(x: 674.46, y: 1025.42), controlPoint2: CGPoint(x: 588.98, y: 1145.7))
        bezier23Path.addCurve(to: CGPoint(x: 522.67, y: 1194.35), controlPoint1: CGPoint(x: 536.2, y: 1189.85), controlPoint2: CGPoint(x: 529.13, y: 1191.48))
        bezier23Path.addCurve(to: CGPoint(x: 420.52, y: 1124.89), controlPoint1: CGPoint(x: 458.83, y: 1222.99), controlPoint2: CGPoint(x: 428.35, y: 1195.51))
        bezier23Path.close()
        if bezier23Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier23Path.fill()
        
        
        //// Bezier 24 Drawing
        let bezier24Path = UIBezierPath()
        bezier24Path.move(to: CGPoint(x: 401.42, y: 1148.38))
        bezier24Path.addCurve(to: CGPoint(x: 378.74, y: 1133.34), controlPoint1: CGPoint(x: 397.52, y: 1133.69), controlPoint2: CGPoint(x: 389.89, y: 1132.91))
        bezier24Path.addCurve(to: CGPoint(x: 378.78, y: 1133.29), controlPoint1: CGPoint(x: 378.76, y: 1133.32), controlPoint2: CGPoint(x: 378.77, y: 1133.31))
        bezier24Path.addCurve(to: CGPoint(x: 423.45, y: 1078.35), controlPoint1: CGPoint(x: 400.35, y: 1102.73), controlPoint2: CGPoint(x: 401.84, y: 1108.92))
        bezier24Path.addCurve(to: CGPoint(x: 423.37, y: 1078.68), controlPoint1: CGPoint(x: 423.42, y: 1078.46), controlPoint2: CGPoint(x: 423.4, y: 1078.57))
        bezier24Path.addCurve(to: CGPoint(x: 420.52, y: 1124.89), controlPoint1: CGPoint(x: 416.88, y: 1106.17), controlPoint2: CGPoint(x: 418.87, y: 1109.92))
        bezier24Path.addCurve(to: CGPoint(x: 522.67, y: 1194.35), controlPoint1: CGPoint(x: 428.35, y: 1195.51), controlPoint2: CGPoint(x: 458.83, y: 1222.99))
        bezier24Path.addCurve(to: CGPoint(x: 542.97, y: 1187.61), controlPoint1: CGPoint(x: 529.12, y: 1191.48), controlPoint2: CGPoint(x: 536.19, y: 1189.85))
        bezier24Path.addCurve(to: CGPoint(x: 518.95, y: 1225.57), controlPoint1: CGPoint(x: 537.16, y: 1201.66), controlPoint2: CGPoint(x: 538.11, y: 1219.96))
        bezier24Path.addCurve(to: CGPoint(x: 401.42, y: 1148.38), controlPoint1: CGPoint(x: 452.65, y: 1241.17), controlPoint2: CGPoint(x: 417.33, y: 1208.24))
        bezier24Path.close()
        fillColor.setFill()
        bezier24Path.fill()
        
        
        
        
        //// Group 23
        //// Group 24
        //// Bezier 25 Drawing
        let bezier25Path = UIBezierPath()
        bezier25Path.move(to: CGPoint(x: 257.16, y: 1470.27))
        bezier25Path.addCurve(to: CGPoint(x: 198.76, y: 1483.9), controlPoint1: CGPoint(x: 236.62, y: 1464.26), controlPoint2: CGPoint(x: 215.11, y: 1470.09))
        bezier25Path.addCurve(to: CGPoint(x: 378.74, y: 1133.31), controlPoint1: CGPoint(x: 235.18, y: 1362.85), controlPoint2: CGPoint(x: 292.37, y: 1227.96))
        bezier25Path.addCurve(to: CGPoint(x: 378.78, y: 1133.29), controlPoint1: CGPoint(x: 378.75, y: 1133.31), controlPoint2: CGPoint(x: 378.77, y: 1133.3))
        bezier25Path.addCurve(to: CGPoint(x: 378.74, y: 1133.34), controlPoint1: CGPoint(x: 378.77, y: 1133.31), controlPoint2: CGPoint(x: 378.76, y: 1133.33))
        bezier25Path.addCurve(to: CGPoint(x: 401.42, y: 1148.38), controlPoint1: CGPoint(x: 389.89, y: 1132.91), controlPoint2: CGPoint(x: 397.52, y: 1133.69))
        bezier25Path.addCurve(to: CGPoint(x: 518.95, y: 1225.57), controlPoint1: CGPoint(x: 417.33, y: 1208.25), controlPoint2: CGPoint(x: 452.65, y: 1241.18))
        bezier25Path.addCurve(to: CGPoint(x: 329.48, y: 1482.4), controlPoint1: CGPoint(x: 463.55, y: 1316.9), controlPoint2: CGPoint(x: 396.89, y: 1400.16))
        bezier25Path.addCurve(to: CGPoint(x: 302.11, y: 1540.21), controlPoint1: CGPoint(x: 315.46, y: 1499.51), controlPoint2: CGPoint(x: 310.25, y: 1520.76))
        bezier25Path.addCurve(to: CGPoint(x: 257.16, y: 1470.27), controlPoint1: CGPoint(x: 304.1, y: 1508.23), controlPoint2: CGPoint(x: 286.16, y: 1478.75))
        bezier25Path.close()
        if bezier25Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier25Path.fill()
        
        
        //// Group 25
        //// Bezier 26 Drawing
        let bezier26Path = UIBezierPath()
        bezier26Path.move(to: CGPoint(x: 115.37, y: 1730.45))
        bezier26Path.addCurve(to: CGPoint(x: 183.21, y: 1591.74), controlPoint1: CGPoint(x: 129.7, y: 1680.46), controlPoint2: CGPoint(x: 153.12, y: 1634.35))
        bezier26Path.addCurve(to: CGPoint(x: 188.06, y: 1589.78), controlPoint1: CGPoint(x: 184.79, y: 1590.85), controlPoint2: CGPoint(x: 186.4, y: 1590.2))
        bezier26Path.addCurve(to: CGPoint(x: 216.66, y: 1608.47), controlPoint1: CGPoint(x: 195.52, y: 1598.51), controlPoint2: CGPoint(x: 205.23, y: 1605.13))
        bezier26Path.addCurve(to: CGPoint(x: 257.94, y: 1605.56), controlPoint1: CGPoint(x: 230.6, y: 1612.55), controlPoint2: CGPoint(x: 245.01, y: 1611.19))
        bezier26Path.addCurve(to: CGPoint(x: 247.1, y: 1835.08), controlPoint1: CGPoint(x: 258.81, y: 1680.72), controlPoint2: CGPoint(x: 279.18, y: 1799.55))
        bezier26Path.addCurve(to: CGPoint(x: 195.3, y: 1745.98), controlPoint1: CGPoint(x: 220.41, y: 1864.64), controlPoint2: CGPoint(x: 219.39, y: 1772.06))
        bezier26Path.addCurve(to: CGPoint(x: 168.61, y: 1831.35), controlPoint1: CGPoint(x: 174.62, y: 1772.69), controlPoint2: CGPoint(x: 169.06, y: 1800.99))
        bezier26Path.addCurve(to: CGPoint(x: 130.25, y: 1926.86), controlPoint1: CGPoint(x: 168.15, y: 1869.62), controlPoint2: CGPoint(x: 155.42, y: 1926.29))
        bezier26Path.addCurve(to: CGPoint(x: 101, y: 1840.62), controlPoint1: CGPoint(x: 97.69, y: 1927.5), controlPoint2: CGPoint(x: 108.21, y: 1871.37))
        bezier26Path.addCurve(to: CGPoint(x: 115.37, y: 1730.45), controlPoint1: CGPoint(x: 92.48, y: 1804.41), controlPoint2: CGPoint(x: 105.13, y: 1766.29))
        bezier26Path.close()
        if bezier26Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier26Path.fill()
        
        
        //// Bezier 27 Drawing
        let bezier27Path = UIBezierPath()
        bezier27Path.move(to: CGPoint(x: 216.66, y: 1608.47))
        bezier27Path.addCurve(to: CGPoint(x: 188.06, y: 1589.78), controlPoint1: CGPoint(x: 205.22, y: 1605.13), controlPoint2: CGPoint(x: 195.52, y: 1598.52))
        bezier27Path.addCurve(to: CGPoint(x: 174.74, y: 1521.22), controlPoint1: CGPoint(x: 173.2, y: 1572.39), controlPoint2: CGPoint(x: 167.31, y: 1546.56))
        bezier27Path.addCurve(to: CGPoint(x: 198.76, y: 1483.9), controlPoint1: CGPoint(x: 179.2, y: 1505.96), controlPoint2: CGPoint(x: 187.83, y: 1493.14))
        bezier27Path.addCurve(to: CGPoint(x: 257.16, y: 1470.28), controlPoint1: CGPoint(x: 215.11, y: 1470.09), controlPoint2: CGPoint(x: 236.62, y: 1464.27))
        bezier27Path.addCurve(to: CGPoint(x: 302.11, y: 1540.21), controlPoint1: CGPoint(x: 286.16, y: 1478.76), controlPoint2: CGPoint(x: 304.1, y: 1508.24))
        bezier27Path.addCurve(to: CGPoint(x: 299.06, y: 1557.59), controlPoint1: CGPoint(x: 301.75, y: 1545.96), controlPoint2: CGPoint(x: 300.75, y: 1551.79))
        bezier27Path.addCurve(to: CGPoint(x: 257.94, y: 1605.57), controlPoint1: CGPoint(x: 292.46, y: 1580.16), controlPoint2: CGPoint(x: 276.76, y: 1597.38))
        bezier27Path.addCurve(to: CGPoint(x: 216.66, y: 1608.47), controlPoint1: CGPoint(x: 245.01, y: 1611.19), controlPoint2: CGPoint(x: 230.6, y: 1612.56))
        bezier27Path.close()
        fillColor.setFill()
        bezier27Path.fill()
        
        
        
        
        
        
        //// Oval 8 Drawing
        context.saveGState()
//        context.translateBy(x: 237.05, y: 1539.44)
//        context.rotate(by: 16.25 * CGFloat.pi/180)
        
        let oval8Path = UIBezierPath(ovalIn: CGRect(x: -54.1, y: -62.7, width: 108.2, height: 125.4))
        oval8Path.apply(CGAffineTransform(rotationAngle:  16.25 * CGFloat.pi / 180))
        oval8Path.apply(CGAffineTransform(translationX: 237.05, y: 1539.44))
        if oval8Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval8Path.fill()
        
        context.restoreGState()
        
        
        
        
        
        
        //// Group 26
        //// Bezier 28 Drawing
        let bezier28Path = UIBezierPath()
        bezier28Path.move(to: CGPoint(x: 1309.7, y: 712.29))
        bezier28Path.addCurve(to: CGPoint(x: 1263.38, y: 664.11), controlPoint1: CGPoint(x: 1296.49, y: 694.05), controlPoint2: CGPoint(x: 1275.1, y: 683.58))
        bezier28Path.addCurve(to: CGPoint(x: 1262.34, y: 644.1), controlPoint1: CGPoint(x: 1256.46, y: 652.58), controlPoint2: CGPoint(x: 1255.11, y: 647.32))
        bezier28Path.addCurve(to: CGPoint(x: 1262.31, y: 644.01), controlPoint1: CGPoint(x: 1262.32, y: 644.05), controlPoint2: CGPoint(x: 1262.31, y: 644.01))
        bezier28Path.addLine(to: CGPoint(x: 1222.31, y: 662.2))
        bezier28Path.addCurve(to: CGPoint(x: 1366.43, y: 834.69), controlPoint1: CGPoint(x: 1261.71, y: 687.51), controlPoint2: CGPoint(x: 1307.72, y: 719.94))
        bezier28Path.addCurve(to: CGPoint(x: 1375.44, y: 859.39), controlPoint1: CGPoint(x: 1366.51, y: 834.89), controlPoint2: CGPoint(x: 1372.85, y: 851.12))
        bezier28Path.addCurve(to: CGPoint(x: 1383.35, y: 889.86), controlPoint1: CGPoint(x: 1376.03, y: 861.18), controlPoint2: CGPoint(x: 1381.59, y: 881.33))
        bezier28Path.addCurve(to: CGPoint(x: 1384.49, y: 895.82), controlPoint1: CGPoint(x: 1383.76, y: 891.84), controlPoint2: CGPoint(x: 1384.1, y: 893.82))
        bezier28Path.addCurve(to: CGPoint(x: 1388.51, y: 921.34), controlPoint1: CGPoint(x: 1386.06, y: 904.26), controlPoint2: CGPoint(x: 1387.45, y: 912.75))
        bezier28Path.addCurve(to: CGPoint(x: 1388.76, y: 923.33), controlPoint1: CGPoint(x: 1388.57, y: 922.01), controlPoint2: CGPoint(x: 1388.68, y: 922.66))
        bezier28Path.addCurve(to: CGPoint(x: 1391.08, y: 950.6), controlPoint1: CGPoint(x: 1389.82, y: 932.4), controlPoint2: CGPoint(x: 1390.54, y: 941.5))
        bezier28Path.addCurve(to: CGPoint(x: 1391.26, y: 953.65), controlPoint1: CGPoint(x: 1391.14, y: 951.61), controlPoint2: CGPoint(x: 1391.19, y: 952.63))
        bezier28Path.addCurve(to: CGPoint(x: 1422.78, y: 957.81), controlPoint1: CGPoint(x: 1397.93, y: 981.53), controlPoint2: CGPoint(x: 1424.55, y: 981.73))
        bezier28Path.addCurve(to: CGPoint(x: 1364.65, y: 799.22), controlPoint1: CGPoint(x: 1403.97, y: 904.74), controlPoint2: CGPoint(x: 1390.87, y: 849.51))
        bezier28Path.addCurve(to: CGPoint(x: 1309.7, y: 712.29), controlPoint1: CGPoint(x: 1350.35, y: 767.66), controlPoint2: CGPoint(x: 1331.06, y: 739.34))
        bezier28Path.close()
        fillColor.setFill()
        bezier28Path.fill()
        
        
        //// Group 27
        //// Bezier 29 Drawing
        let bezier29Path = UIBezierPath()
        bezier29Path.move(to: CGPoint(x: 1706.24, y: 1125.55))
        bezier29Path.addCurve(to: CGPoint(x: 1703.38, y: 1079.34), controlPoint1: CGPoint(x: 1707.89, y: 1110.58), controlPoint2: CGPoint(x: 1709.88, y: 1106.84))
        bezier29Path.addCurve(to: CGPoint(x: 1683.17, y: 1042.22), controlPoint1: CGPoint(x: 1698.61, y: 1067.86), controlPoint2: CGPoint(x: 1691.79, y: 1055.96))
        bezier29Path.addCurve(to: CGPoint(x: 1519.16, y: 752.9), controlPoint1: CGPoint(x: 1628.67, y: 945.68), controlPoint2: CGPoint(x: 1575.93, y: 848.08))
        bezier29Path.addCurve(to: CGPoint(x: 1278.43, y: 640.49), controlPoint1: CGPoint(x: 1465.18, y: 662.38), controlPoint2: CGPoint(x: 1385.51, y: 620.55))
        bezier29Path.addCurve(to: CGPoint(x: 1262.34, y: 644.1), controlPoint1: CGPoint(x: 1270.98, y: 641.53), controlPoint2: CGPoint(x: 1265.72, y: 642.6))
        bezier29Path.addCurve(to: CGPoint(x: 1263.37, y: 664.11), controlPoint1: CGPoint(x: 1255.11, y: 647.32), controlPoint2: CGPoint(x: 1256.45, y: 652.58))
        bezier29Path.addCurve(to: CGPoint(x: 1309.7, y: 712.29), controlPoint1: CGPoint(x: 1275.09, y: 683.58), controlPoint2: CGPoint(x: 1296.48, y: 694.05))
        bezier29Path.addCurve(to: CGPoint(x: 1364.64, y: 799.22), controlPoint1: CGPoint(x: 1331.05, y: 739.34), controlPoint2: CGPoint(x: 1350.34, y: 767.67))
        bezier29Path.addCurve(to: CGPoint(x: 1422.77, y: 957.82), controlPoint1: CGPoint(x: 1390.87, y: 849.52), controlPoint2: CGPoint(x: 1403.97, y: 904.75))
        bezier29Path.addCurve(to: CGPoint(x: 1446.61, y: 1014.84), controlPoint1: CGPoint(x: 1429.65, y: 977.23), controlPoint2: CGPoint(x: 1437.28, y: 996.36))
        bezier29Path.addCurve(to: CGPoint(x: 1583.78, y: 1188.28), controlPoint1: CGPoint(x: 1452.29, y: 1026.09), controlPoint2: CGPoint(x: 1537.77, y: 1146.37))
        bezier29Path.addCurve(to: CGPoint(x: 1604.08, y: 1195.02), controlPoint1: CGPoint(x: 1590.56, y: 1190.52), controlPoint2: CGPoint(x: 1597.63, y: 1192.15))
        bezier29Path.addCurve(to: CGPoint(x: 1706.24, y: 1125.55), controlPoint1: CGPoint(x: 1667.93, y: 1223.65), controlPoint2: CGPoint(x: 1698.4, y: 1196.18))
        bezier29Path.close()
        if bezier29Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier29Path.fill()
        
        
        //// Bezier 30 Drawing
        let bezier30Path = UIBezierPath()
        bezier30Path.move(to: CGPoint(x: 1725.34, y: 1149.04))
        bezier30Path.addCurve(to: CGPoint(x: 1748.02, y: 1134.01), controlPoint1: CGPoint(x: 1729.24, y: 1134.35), controlPoint2: CGPoint(x: 1736.87, y: 1133.58))
        bezier30Path.addCurve(to: CGPoint(x: 1747.98, y: 1133.96), controlPoint1: CGPoint(x: 1748, y: 1133.99), controlPoint2: CGPoint(x: 1747.99, y: 1133.98))
        bezier30Path.addCurve(to: CGPoint(x: 1703.31, y: 1079.01), controlPoint1: CGPoint(x: 1726.4, y: 1103.4), controlPoint2: CGPoint(x: 1724.92, y: 1109.59))
        bezier30Path.addCurve(to: CGPoint(x: 1703.39, y: 1079.34), controlPoint1: CGPoint(x: 1703.34, y: 1079.13), controlPoint2: CGPoint(x: 1703.36, y: 1079.23))
        bezier30Path.addCurve(to: CGPoint(x: 1706.24, y: 1125.56), controlPoint1: CGPoint(x: 1709.88, y: 1106.84), controlPoint2: CGPoint(x: 1707.89, y: 1110.58))
        bezier30Path.addCurve(to: CGPoint(x: 1604.09, y: 1195.02), controlPoint1: CGPoint(x: 1698.41, y: 1196.18), controlPoint2: CGPoint(x: 1667.93, y: 1223.65))
        bezier30Path.addCurve(to: CGPoint(x: 1583.79, y: 1188.28), controlPoint1: CGPoint(x: 1597.64, y: 1192.15), controlPoint2: CGPoint(x: 1590.56, y: 1190.52))
        bezier30Path.addCurve(to: CGPoint(x: 1607.81, y: 1226.24), controlPoint1: CGPoint(x: 1589.6, y: 1202.32), controlPoint2: CGPoint(x: 1588.65, y: 1220.63))
        bezier30Path.addCurve(to: CGPoint(x: 1725.34, y: 1149.04), controlPoint1: CGPoint(x: 1674.11, y: 1241.84), controlPoint2: CGPoint(x: 1709.43, y: 1208.91))
        bezier30Path.close()
        fillColor.setFill()
        bezier30Path.fill()
        
        
        
        
        //// Group 28
        //// Group 29
        //// Bezier 31 Drawing
        let bezier31Path = UIBezierPath()
        bezier31Path.move(to: CGPoint(x: 1869.6, y: 1470.94))
        bezier31Path.addCurve(to: CGPoint(x: 1928, y: 1484.57), controlPoint1: CGPoint(x: 1890.13, y: 1464.93), controlPoint2: CGPoint(x: 1911.65, y: 1470.75))
        bezier31Path.addCurve(to: CGPoint(x: 1748.02, y: 1133.98), controlPoint1: CGPoint(x: 1891.58, y: 1363.52), controlPoint2: CGPoint(x: 1834.39, y: 1228.63))
        bezier31Path.addCurve(to: CGPoint(x: 1747.98, y: 1133.96), controlPoint1: CGPoint(x: 1748, y: 1133.97), controlPoint2: CGPoint(x: 1747.99, y: 1133.96))
        bezier31Path.addCurve(to: CGPoint(x: 1748.02, y: 1134.01), controlPoint1: CGPoint(x: 1747.99, y: 1133.98), controlPoint2: CGPoint(x: 1748, y: 1133.99))
        bezier31Path.addCurve(to: CGPoint(x: 1725.34, y: 1149.04), controlPoint1: CGPoint(x: 1736.87, y: 1133.58), controlPoint2: CGPoint(x: 1729.24, y: 1134.35))
        bezier31Path.addCurve(to: CGPoint(x: 1607.81, y: 1226.23), controlPoint1: CGPoint(x: 1709.43, y: 1208.91), controlPoint2: CGPoint(x: 1674.11, y: 1241.84))
        bezier31Path.addCurve(to: CGPoint(x: 1797.28, y: 1483.07), controlPoint1: CGPoint(x: 1663.21, y: 1317.57), controlPoint2: CGPoint(x: 1729.87, y: 1400.82))
        bezier31Path.addCurve(to: CGPoint(x: 1824.65, y: 1540.87), controlPoint1: CGPoint(x: 1811.29, y: 1500.17), controlPoint2: CGPoint(x: 1816.51, y: 1521.43))
        bezier31Path.addCurve(to: CGPoint(x: 1869.6, y: 1470.94), controlPoint1: CGPoint(x: 1822.66, y: 1508.9), controlPoint2: CGPoint(x: 1840.6, y: 1479.42))
        bezier31Path.close()
        if bezier31Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier31Path.fill()
        
        
        //// Group 30
        //// Bezier 32 Drawing
        let bezier32Path = UIBezierPath()
        bezier32Path.move(to: CGPoint(x: 2011.39, y: 1731.12))
        bezier32Path.addCurve(to: CGPoint(x: 1943.55, y: 1592.41), controlPoint1: CGPoint(x: 1997.06, y: 1681.13), controlPoint2: CGPoint(x: 1973.63, y: 1635.01))
        bezier32Path.addCurve(to: CGPoint(x: 1938.7, y: 1590.45), controlPoint1: CGPoint(x: 1941.97, y: 1591.51), controlPoint2: CGPoint(x: 1940.35, y: 1590.87))
        bezier32Path.addCurve(to: CGPoint(x: 1910.1, y: 1609.14), controlPoint1: CGPoint(x: 1931.24, y: 1599.18), controlPoint2: CGPoint(x: 1921.53, y: 1605.8))
        bezier32Path.addCurve(to: CGPoint(x: 1868.82, y: 1606.23), controlPoint1: CGPoint(x: 1896.15, y: 1613.22), controlPoint2: CGPoint(x: 1881.75, y: 1611.85))
        bezier32Path.addCurve(to: CGPoint(x: 1879.66, y: 1835.75), controlPoint1: CGPoint(x: 1867.95, y: 1681.39), controlPoint2: CGPoint(x: 1847.58, y: 1800.21))
        bezier32Path.addCurve(to: CGPoint(x: 1931.46, y: 1746.64), controlPoint1: CGPoint(x: 1906.34, y: 1865.31), controlPoint2: CGPoint(x: 1907.37, y: 1772.73))
        bezier32Path.addCurve(to: CGPoint(x: 1958.15, y: 1832.02), controlPoint1: CGPoint(x: 1952.14, y: 1773.35), controlPoint2: CGPoint(x: 1957.7, y: 1801.66))
        bezier32Path.addCurve(to: CGPoint(x: 1996.51, y: 1927.53), controlPoint1: CGPoint(x: 1958.61, y: 1870.29), controlPoint2: CGPoint(x: 1971.34, y: 1926.96))
        bezier32Path.addCurve(to: CGPoint(x: 2025.76, y: 1841.28), controlPoint1: CGPoint(x: 2029.07, y: 1928.17), controlPoint2: CGPoint(x: 2018.55, y: 1872.04))
        bezier32Path.addCurve(to: CGPoint(x: 2011.39, y: 1731.12), controlPoint1: CGPoint(x: 2034.28, y: 1805.07), controlPoint2: CGPoint(x: 2021.63, y: 1766.95))
        bezier32Path.close()
        if bezier32Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        bezier32Path.fill()
        
        
        //// Bezier 33 Drawing
        let bezier33Path = UIBezierPath()
        bezier33Path.move(to: CGPoint(x: 1910.1, y: 1609.14))
        bezier33Path.addCurve(to: CGPoint(x: 1938.7, y: 1590.45), controlPoint1: CGPoint(x: 1921.53, y: 1605.8), controlPoint2: CGPoint(x: 1931.24, y: 1599.18))
        bezier33Path.addCurve(to: CGPoint(x: 1952.02, y: 1521.89), controlPoint1: CGPoint(x: 1953.56, y: 1573.05), controlPoint2: CGPoint(x: 1959.45, y: 1547.22))
        bezier33Path.addCurve(to: CGPoint(x: 1928, y: 1484.57), controlPoint1: CGPoint(x: 1947.56, y: 1506.62), controlPoint2: CGPoint(x: 1938.93, y: 1493.81))
        bezier33Path.addCurve(to: CGPoint(x: 1869.6, y: 1470.94), controlPoint1: CGPoint(x: 1911.65, y: 1470.75), controlPoint2: CGPoint(x: 1890.13, y: 1464.93))
        bezier33Path.addCurve(to: CGPoint(x: 1824.65, y: 1540.88), controlPoint1: CGPoint(x: 1840.6, y: 1479.42), controlPoint2: CGPoint(x: 1822.66, y: 1508.9))
        bezier33Path.addCurve(to: CGPoint(x: 1827.7, y: 1558.26), controlPoint1: CGPoint(x: 1825.01, y: 1546.63), controlPoint2: CGPoint(x: 1826, y: 1552.46))
        bezier33Path.addCurve(to: CGPoint(x: 1868.82, y: 1606.23), controlPoint1: CGPoint(x: 1834.3, y: 1580.83), controlPoint2: CGPoint(x: 1850, y: 1598.04))
        bezier33Path.addCurve(to: CGPoint(x: 1910.1, y: 1609.14), controlPoint1: CGPoint(x: 1881.75, y: 1611.85), controlPoint2: CGPoint(x: 1896.15, y: 1613.22))
        bezier33Path.close()
        fillColor.setFill()
        bezier33Path.fill()
        
        
        
        
        
        
        //// Oval 9 Drawing
        context.saveGState()
//        context.translateBy(x: 1889.7, y: 1540.14)
//        context.rotate(by: -16.25 * CGFloat.pi/180)
        
        let oval9Path = UIBezierPath(ovalIn: CGRect(x: -54.1, y: -62.7, width: 108.2, height: 125.4))
        oval9Path.apply(CGAffineTransform(rotationAngle: -16.25 * CGFloat.pi / 180))
        oval9Path.apply(CGAffineTransform(translationX: 1889.7, y: 1540.14))
        if oval9Path.contains(clickPoint){
            fillColor3.setFill()
        }else{
            fillColor2.setFill()
        }
        oval9Path.fill()
        
        context.restoreGState()
        
        context.restoreGState()
        
    }
    
    
    
    
    @objc(StyleKitNameResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}

