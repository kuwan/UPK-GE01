//
//  ResetPasswordTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let OldPassword = UITextField(frame: CGRect(x: 45, y: 10, width: UIScreen.main.bounds.width - 85, height: 40))
let NewPassword = UITextField(frame: CGRect(x: 45, y: 55, width: UIScreen.main.bounds.width - 85, height: 40))
let NewPassword1 = UITextField(frame: CGRect(x: 45, y: 100, width: UIScreen.main.bounds.width - 85, height: 40))
class ResetPasswordTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Reset password"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return self.view.frame.height
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let image1 = UIImageView.init(frame: CGRect(x: 10, y: 15, width: 25, height: 25))
        image1.image = UIImage(named: "user_login_password")
        cell.contentView.addSubview(image1)
       // let OldPassword = UITextField(frame: CGRect(x: 45, y: 10, width: self.view.frame.width - 20, height: 40))
        OldPassword.borderStyle = .none
        OldPassword.placeholder = "Old Password"
        OldPassword.isSecureTextEntry = true
        self.view.addSubview(OldPassword)
        let lineview1 = UIView.init(frame: CGRect(x: 10, y: 50, width: self.view.frame.width - 20, height: 2))
        lineview1.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview1)
        let ButtonSecure = UIButton.init(frame: CGRect(x: self.view.frame.width - 40, y: 15, width: 25, height: 25))
        ButtonSecure.setImage(UIImage(named: "ic_user_eye_dis"), for: .normal)
        ButtonSecure.addTarget(self, action: #selector(ButtonSecure_Action), for: .touchUpInside)
        cell.contentView.addSubview(ButtonSecure)
        
        let image2 = UIImageView.init(frame: CGRect(x: 10, y: 60, width: 25, height: 25))
        image2.image = UIImage(named: "user_login_password")
        cell.contentView.addSubview(image2)
       // let NewPassword = UITextField(frame: CGRect(x: 45, y: 55, width: self.view.frame.width - 20, height: 40))
        NewPassword.borderStyle = .none
        NewPassword.placeholder = "New Password"
        NewPassword.isSecureTextEntry = true
        self.view.addSubview(NewPassword)
        let lineview2 = UIView.init(frame: CGRect(x: 10, y: 95, width: self.view.frame.width - 20, height: 2))
        lineview2.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview2)
        let ButtonSecure1 = UIButton.init(frame: CGRect(x: self.view.frame.width - 40, y: 60, width: 25, height: 25))
        ButtonSecure1.setImage(UIImage(named: "ic_user_eye_dis"), for: .normal)
        ButtonSecure1.addTarget(self, action: #selector(ButtonSecure_Action1), for: .touchUpInside)
        cell.contentView.addSubview(ButtonSecure1)

        
        let image3 = UIImageView.init(frame: CGRect(x: 10, y: 105, width: 25, height: 25))
        image3.image = UIImage(named: "user_login_password")
        cell.contentView.addSubview(image3)
       // let NewPassword1 = UITextField(frame: CGRect(x: 45, y: 100, width: self.view.frame.width - 20, height: 40))
        NewPassword1.borderStyle = .none
        NewPassword1.isSecureTextEntry = true
        NewPassword1.placeholder = "Repeat New Password"
        self.view.addSubview(NewPassword1)
        let lineview3 = UIView.init(frame: CGRect(x: 10, y: 140, width: self.view.frame.width - 20, height: 2))
        lineview3.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview3)

        let button_reset = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_reset.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_reset.setTitle("Reset password", for: .normal)
        //button_next.addTarget(self, action: #selector(buttonAction_next), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_reset)


        return cell
    }
    
    @objc func ButtonSecure_Action(button: UIButton){
        
        if OldPassword.isSecureTextEntry == true{
            
            OldPassword.isSecureTextEntry = false
            button.setImage(UIImage(named: "ic_user_eye_nor"), for: .normal)
        }
        else{
            
            OldPassword.isSecureTextEntry = true
            button.setImage(UIImage(named: "ic_user_eye_dis"), for: .normal)
        }
    }
    @objc func ButtonSecure_Action1(button: UIButton){
        
        if NewPassword.isSecureTextEntry == true{
            
            NewPassword.isSecureTextEntry = false
            NewPassword1.isSecureTextEntry = false
            button.setImage(UIImage(named: "ic_user_eye_nor"), for: .normal)
        }
        else{
            
            NewPassword.isSecureTextEntry = true
            NewPassword1.isSecureTextEntry = true
            button.setImage(UIImage(named: "ic_user_eye_dis"), for: .normal)
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
