//
//  MoreViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/15.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var menu = [["Help Center"], ["Update My Profile", "Reset Password"], ["My Device"], ["Contact Us"], ["Privacy Statement","Terms of Services"], ["Misc Setting", "About software"], ["Log out"]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //  title = "More "//title = "More"
        self.navigationItem.title = "RelieforMe"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        
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
        
        return 7
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 || section == 2 || section == 3 || section == 6{
            
            return 1
        }
        else{
            
            return 2
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  5
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
       return 45
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_more", for: indexPath)
        
        cell.imageView?.image = UIImage(named: "pic")
        cell.textLabel?.text = menu[indexPath.section][indexPath.row]
        cell.textLabel?.textColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            
            let vc = HelpCenterTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 1 && indexPath.row == 0{
            
            let vc = UpdateProfileTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 1 && indexPath.row == 1 {
            
            let vc = ResetPasswordTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 2 {
            
            let vc = MyDeviceTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 3 {
            
            let vc = ContactUsTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 4 && indexPath.row == 0 {
            
            let vc = PrivacyStatementTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 4 && indexPath.row == 1 {
            
            let vc = TermsofServicesTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 5 && indexPath.row == 0 {
            
            let vc = MiscSettingTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 5 && indexPath.row == 1 {
            
            let vc = AboutSoftwareTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else  if indexPath.section == 6{
            
            /*let menu = UIAlertController(title: "Message", message: "Are you sure you want to log out?", preferredStyle: .alert)
            let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
            let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            menu.addAction(option1)
            menu.addAction(option2)
            
            self.present(menu, animated: true, completion: nil)*/
            //let vc = LogOutTableViewController()
            let vc = PLViewController()
            vc.index = 4
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
 
    //  override func addChild(_ childController: UIViewController) {
    
    //}
}

