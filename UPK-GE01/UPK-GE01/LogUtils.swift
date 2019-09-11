//
//  LogUtils.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/11.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation

class LogUtils{
    
    public static func debugLog<T>(_ message:T,file : String = #file,function:String = #function,line : Int = #line){
        
        #if DEBUG
        //获取文件名
        let fileName = (file as NSString).lastPathComponent
        //创建一个日期格式器
        let dformatter = DateFormatter()
        //为日期格式器设置格式字符创
        dformatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        //使用日期格式器格式化当前日期
        let datestr = dformatter.string(from: Date())
        //打印日志
        print("********* log start ********")
        print(datestr)
        print("fileName: \(fileName) -> line: \(line) -> func: \(function)")
        print(message)
        print("*****  log end  *****")
        #endif
    }
}
