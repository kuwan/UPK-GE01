//
//  ForgotPasswordTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/9.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let label4 = UITextField(frame: CGRect(x: 45, y: 145, width: UIScreen.main.bounds.width - 85, height: 40))
let label5 = UITextField(frame: CGRect(x: 45, y: 190, width: UIScreen.main.bounds.width - 85, height: 40))

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
        let lineview1 = UIView.init(frame: CGRect(x: 10, y: 50, width: 80, height: 2))
        lineview1.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview1)
        
        let image1 = UIImageView.init(frame: CGRect(x: 95, y: 15, width: 25, height: 25))
        image1.image = UIImage(named: "pic")
        cell.contentView.addSubview(image1)
        let Label1 = UITextField(frame: CGRect(x: 130, y: 10, width: self.view.frame.width - 100, height: 40))
        Label1.borderStyle = .none
        Label1.placeholder = "Email address or cell phone number"
        Label1.clearButtonMode = .always
        self.view.addSubview(Label1)
        let lineview2 = UIView.init(frame: CGRect(x: 95, y: 50, width: self.view.frame.width - 100, height: 2))
        lineview2.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview2)
        
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
                
        let image2 = UIImageView.init(frame: CGRect(x: 10, y: 105, width: 25, height: 25))
        image2.image = UIImage(named: "pic")
        cell.contentView.addSubview(image2)
        let label3 = UITextField(frame: CGRect(x: 45, y: 100, width: self.view.frame.width - 20, height: 40))
        label3.borderStyle = .none
        label3.placeholder = "Enter verfication code"
        self.view.addSubview(label3)
        let lineview3 = UIView.init(frame: CGRect(x: 10, y: 140, width: self.view.frame.width - 20, height: 2))
        lineview3.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview3)
        
        let image3 = UIImageView.init(frame: CGRect(x: 10, y: 150, width: 25, height: 25))
        image3.image = UIImage(named: "pic")
        cell.contentView.addSubview(image3)
       // let label4 = UITextField(frame: CGRect(x: 45, y: 145, width: self.view.frame.width - 85, height: 40))
        label4.borderStyle = .none
        label4.placeholder = "New Password"
        label4.isSecureTextEntry = true
        self.view.addSubview(label4)
        let lineview4 = UIView.init(frame: CGRect(x: 10, y: 185, width: self.view.frame.width - 20, height: 2))
        lineview4.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview4)
        let ButtonSecure = UIButton.init(frame: CGRect(x: self.view.frame.width - 40, y: 155, width: 25, height: 25))
        ButtonSecure.setImage(UIImage(named: "pic"), for: .normal)
        ButtonSecure.addTarget(self, action: #selector(ButtonSecure_Action), for: .touchUpInside)
        cell.contentView.addSubview(ButtonSecure)
        
        let image4 = UIImageView.init(frame: CGRect(x: 10, y: 195, width: 25, height: 25))
        image4.image = UIImage(named: "pic")
        cell.contentView.addSubview(image4)
       // let label5 = UITextField(frame: CGRect(x: 45, y: 190, width: self.view.frame.width - 20, height: 40))
        label5.borderStyle = .none
        label5.placeholder = "Repeat New Password"
        label5.isSecureTextEntry = true
        self.view.addSubview(label5)
        let lineview5 = UIView.init(frame: CGRect(x: 10, y: 230, width: self.view.frame.width - 20, height: 2))
        lineview5.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview5)
        
        let button_Reset = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_Reset.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        button_Reset.setTitle("Reset password", for: .normal)
        Button1.addTarget(self, action: #selector(Button1_action), for: .touchUpInside)
        cell.contentView.addSubview(button_Reset)
        
        return cell
    }
    @objc func ButtonSecure_Action(button: UIButton){
        
        if label4.isSecureTextEntry == true{
            
            label4.isSecureTextEntry = false
            label5.isSecureTextEntry = false
            button.setImage(UIImage(named: "picHL"), for: .normal)
        }
        else{
            
            label4.isSecureTextEntry = true
            label5.isSecureTextEntry = true
            button.setImage(UIImage(named: "pic"), for: .normal)
        }
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
        let option1 = UIAlertAction(title: "Cance", style: .cancel, handler: nil)
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
