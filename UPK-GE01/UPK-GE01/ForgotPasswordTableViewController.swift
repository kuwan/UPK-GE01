//
//  ForgotPasswordTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/9.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ForgotPasswordTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        self.navigationItem.title = "Forgot Password"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
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
        
        let Button1 = UIButton.init(frame: CGRect(x: 10, y: 10, width: 80, height: 40))
        Button1.setImage(UIImage(named: "pic"), for: .normal)
        Button1.setTitle("  US", for: .normal)
        Button1.setTitleColor(.black, for: .normal)
        Button1.contentHorizontalAlignment = .left
        Button1.addTarget(self, action: #selector(Button1_action), for: .touchUpInside)
        cell.contentView.addSubview(Button1)
        
        let Label1 = UITextField(frame: CGRect(x: 95, y: 10, width: self.view.frame.width - 100, height: 40))
        Label1.borderStyle = .line
        Label1.placeholder = "Email address or cell phone number"
        self.view.addSubview(Label1)
        
        let Button2 = UIButton.init(frame: CGRect(x: 10, y: 55, width: self.view.frame.width - 10, height: 40))
        Button2.addTarget(self, action: #selector(Button2_action), for: .touchUpInside)
        cell.contentView.addSubview(Button2)
        let label2 = UILabel.init(frame: CGRect(x: 10, y: 55, width: self.view.frame.width - 10, height: 40))
        label2.text = "Click here to send verification code to your email or cell phone"
        label2.numberOfLines = 2
        label2.font = label2.font.withSize(14)
        label2.textAlignment = .center
        label2.textColor = UIColor.white
        label2.backgroundColor = UIColor.orange
        cell.contentView.addSubview(label2)
        
        let label3 = UITextField(frame: CGRect(x: 10, y: 100, width: self.view.frame.width - 20, height: 40))
        label3.borderStyle = .line
        label3.placeholder = "Enter verfication code"
        self.view.addSubview(label3)
        
        let label4 = UITextField(frame: CGRect(x: 10, y: 145, width: self.view.frame.width - 20, height: 40))
        label4.borderStyle = .line
        label4.placeholder = "New Password"
        self.view.addSubview(label4)
        
        
        let label5 = UITextField(frame: CGRect(x: 10, y: 190, width: self.view.frame.width - 20, height: 40))
        label5.borderStyle = .line
        label5.placeholder = "Repeat New Password"
        self.view.addSubview(label5)
        
        let button_Reset = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_Reset.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button_Reset.setTitle("Reset password", for: .normal)
        Button1.addTarget(self, action: #selector(Button1_action), for: .touchUpInside)
        cell.contentView.addSubview(button_Reset)
        
        return cell
    }
    
    @objc func Button1_action(button: UIButton){
        
        let menu = UIAlertController(title: "", message: "Select Area", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "US", style: .default, handler: nil)
        let option2 = UIAlertAction(title: "CHN", style: .cancel, handler: nil)
        
        menu.addAction(option1)
        menu.addAction(option2)
        
        self.present(menu, animated: true, completion: nil)
    }
    @objc func Button2_action(button: UIButton){
        
        let menu = UIAlertController(title: "", message: "test", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "Cance;", style: .cancel, handler: nil)
        let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        menu.addAction(option1)
        menu.addAction(option2)
        
        self.present(menu, animated: true, completion: nil)
    }
    @objc func Button1_Reset(button: UIButton){
        
       // let vc = PLViewController()
        //vc.index = 4
       // self.navigationController?.pushViewController(vc, animated: true)
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
