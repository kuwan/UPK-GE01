//
//  PLViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/18.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

let NavH:CGFloat = UIScreen.main.bounds.height == 812 ? 84 : 64

class PLViewController: UIViewController {
    
    var index = 0
    var titles = ["Relieve","Strengthen", "Relax"]
  //  var pageFrame: CGRect = CGRect(x: 0, y: 0, width: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
        if index != 4{
            self.navigationItem.title = "Program Library"
            let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
            self.navigationItem.backBarButtonItem = item
            titles = ["Relieve","Strengthen", "Relax"]
        }
        else{
            self.navigationItem.title = "RelieforMe"
            let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
            self.navigationItem.leftBarButtonItem = item
            titles = ["Register","Log in"]
        }
        //self.navigationItem.titleView?.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        /// 标题
       
        //样式
        let style = YCTitleStyle()
        //可以滚动
        style.isScrollEnable = false
        //显示底部滚动条
        style.isShowBottomLine = true
        //进行缩放
      //  style.isNeedScale = true
        //显示遮盖
        style.isShowCover = true
        
        
        // 所以的子控制器
        var childVcs = [UITableViewController]()
       // for _ in 0..<titles.count {
         //   let vc = UITableViewController()
            //vc.view.backgroundColor = UIColor.randomColor()
        
           // childVcs.append(vc)
       // }
         if index != 4 {
            let vc1 = RelieveTableViewController()
            let vc2 = StrengthenTableViewController()
            let vc3 = RelaxTableViewController()
            
            childVcs.append(vc1)
            childVcs.append(vc2)
            childVcs.append(vc3)
        }
         else{
            let vc1 = RegisterTableViewController()
            let vc2 = LoginTableViewController()
            
            childVcs.append(vc1)
            childVcs.append(vc2)
        }
        print(index)
        
        // pageView的frame
      //  if index != 4{
           let pageFrame = CGRect(x: 0, y: NavH, width: view.bounds.width, height: view.bounds.height - 64)
       // }
       // else{
            
            // pageFrame = CGRect(x: 0, y: 200, width: view.bounds.width, height: //view.bounds.height - 64)
        //}
        
        // 创建YCPageView,并且添加到控制器的view中
        let pageView = YCPageView(frame: pageFrame, titles: titles, childVcs: childVcs, parentVc: self, style : style)
        view.addSubview(pageView)
    }
}
