//
//  AppDelegate.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/7/11.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        /* Realm 数据库配置，用于数据库的迭代更新 */
        //每次模型属性变化时，将 schemaVersion 加 1 即可
        let schemaVersion : UInt64 = 0
        var config = Realm.Configuration(schemaVersion: schemaVersion,
                                         migrationBlock: { migration, oldSchemaVersion in
                                            // 我们目前还未执行过迁移，因此 oldSchemaVersion == 0
                                            if (oldSchemaVersion < schemaVersion) {
                                                // 没有什么要做的！
                                                // Realm 会自行检测新增和被移除的属性
                                                // 然后会自动更新磁盘上的架构
                                            }
        })
        config.fileURL = config.fileURL!.deletingLastPathComponent().appendingPathComponent("UPK_GE01.realm")
        Realm.Configuration.defaultConfiguration = config
        Realm.asyncOpen { (realm, error) in
            
            /* Realm 成功打开，迁移已在后台线程中完成 */
            if let _ = realm {
                
                LogUtils.debugLog("Realm 数据库配置成功")
            }
                /* 处理打开 Realm 时所发生的错误 */
            else if let error = error {
                
                LogUtils.debugLog("Realm 数据库配置失败：\(error.localizedDescription)")
            }
        }
        
        //初始化数据库
        let realm = try! Realm()
        //打印数据库存放地址
        LogUtils.debugLog(realm.configuration.fileURL!)
        
        InitDB.initDB(realm: realm)
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

