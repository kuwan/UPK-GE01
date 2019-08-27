//
//  MyProgramsViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/15.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class MyProgramsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    var index_selectd = 0
    //var test_view: UItableview?
    var menu = [["Start New Session"], ["Select from My Favorite"], ["Repeat Last Program"], ["Recommended for You"], ["My Treatment Diary"]]
    var menu_image = ["icon_main_start","icon_main_favorite","icon_main_repeat","icon_main_recommended","icon_main_diary"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        self.navigationItem.title = "RelieforMe"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white
            , NSAttributedString.Key.font:UIFont.systemFont(ofSize: 25*lengthPercent)]
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
       // self.tabB
        // title = "My programs"
       // self.navigationItem.title = "RelieforMe"
        //self.tabBarController?.hidesBottomBarWhenPushed = false
        //self.tabBarController?.tabBar.isHidden = false
        //  self.tabBarItem.selectedImage = UIImage(named: "pic")
        //controller.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        // controller.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if ((self.navigationController?.viewControllers.count)!) > 1{
            
            self.tabBarController?.tabBar.isHidden = true
        }
        else{
            
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 10*lengthPercent
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  10*lengthPercent
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_myprograms", for: indexPath)as! MyProgramTableViewCell
        //cell.selectionStyle = UITableViewCell.SelectionStyle.none
        // print(indexPath.section)
        cell.MyImage.image = UIImage(named:menu_image[indexPath.section])
        cell.MyLabel.text = menu[indexPath.section][indexPath.row]
       // cell.imageView?.image = UIImage(named:menu_image[indexPath.section])
        //cell.textLabel?.text = menu[indexPath.section][indexPath.row]
       // cell.textLabel?.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        //tableView.indexPathForSelectedRow!.section
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 84*lengthPercent
    }
    //  override func addChild(_ childController: UIViewController) {
    
    //}
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
        
            let qrcodeVC = StartNewSessionTableViewController()
            navigationController?.pushViewController(qrcodeVC, animated: true)
        }
        if indexPath.section == 1 {
            
            let qrcodeVC = MyFavoriteTableViewController()
            navigationController?.pushViewController(qrcodeVC, animated: true)
        }
        if indexPath.section == 2 {
            
            self.tabBarController?.selectedIndex = 1
        }
        if indexPath.section == 3 {
            
            let qrcodeVC = RecommendTableViewController()
            navigationController?.pushViewController(qrcodeVC, animated: true)
        }
        if indexPath.section == 4 {
            
            let qrcodeVC = MyDiaryTableViewController()
            print("\(String(describing: self.navigationController?.navigationBar.frame.size.height))------------nav height")
            print("\(self.view.frame.width)------------w height")
            print("\((self.view.frame.height))------------h height")
             print("\((screenHeight))------------h height")
            print("\((screenWidth))------------h height")
            
            navigationController?.pushViewController(qrcodeVC, animated: true)
        }
    }
    
 /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showdetial"{
            
            let dest = segue.destination as! StartNewSessionViewController
          // dest.index = (sender as! UITableView).indexPathForSelectedRow!.row
           //dest.index = (sender as! UITableView).indexPathForSelectedRow?.row
            //dest.index = self.tableView.indexPathForSelectedRow!.row
            //dest.index = (sender as! IndexPath).row
            
            dest.index = 2
            
           
        }
    }*/
    
    
}
