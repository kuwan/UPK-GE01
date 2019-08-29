//
//  TabBarViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/27.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
       
        if item.selectedImage == UIImage(named: "lin_control_blue (1)"){
           
            let menu = UIAlertController(title: "", message: "test", preferredStyle: .alert)
            self.present(menu, animated: true, completion: nil)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                self.presentedViewController?.dismiss(animated: false, completion: nil)
            }
            
        }
       // if item.selectedImage == UIImage(named: "lin_libiary_blue (1)"){
            
           // print("22222222")
        //}
    }
   /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
