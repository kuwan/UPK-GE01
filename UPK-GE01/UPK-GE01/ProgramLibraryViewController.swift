//
//  ProgramLibraryViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/15.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ProgramLibraryViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var therapy = [["Relieve"], ["Strengthen"], ["Relax"]]
    var therapy_decribe = ["Programs designed to help relieve your muscle and joint pain and stiffness", "Programs designed to help strenghten and restore your muscles and promote movement", "Programs designed to massage and relax your muscles"]
    
      var session_image = ["icon_main_relieve", "icon_main_strenthe", "icon_main_relax"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // title = "Program Library"
        self.navigationItem.title = "RelieforMe"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white
            , NSAttributedString.Key.font:UIFont.systemFont(ofSize: 25)]
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
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
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 85
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_programlibrary", for: indexPath) as! ProgramLibraryUITableViewCell
        
        
        
        cell.SessionName.text = therapy[indexPath.section][indexPath.row]
        cell.SessionImage.image = UIImage(named:session_image[indexPath.section])
        cell.SessionImage.layer.cornerRadius = cell.SessionImage.frame.size.height/2
        cell.SessionImage.clipsToBounds = true
        cell.SessionDetial.text = therapy_decribe[indexPath.section]
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0 {
            
            let vc = PLViewController()
            vc.index = 0
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.section == 1 && indexPath.row == 0 {
            
            let vc = PLViewController()
            vc.index = 1
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.section == 2 && indexPath.row == 0 {
            
            let vc = PLViewController()
            vc.index = 2
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    //  override func addChild(_ childController: UIViewController) {
    
    //}
}
