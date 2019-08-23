//
//  LoginTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/9.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let label2 = UITextField(frame: CGRect(x: 45, y: 55, width: UIScreen.main.bounds.width - 85, height: 40))
class LoginTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = item
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
        image1.image = UIImage(named: "pic")
        cell.contentView.addSubview(image1)
        let label1 = UITextField(frame: CGRect(x: 45, y: 10, width: self.view.frame.width - 20, height: 40))
        label1.borderStyle = .none
        label1.placeholder = "Email address or cell phone number"
        label1.clearButtonMode = .always
        self.view.addSubview(label1)
        let lineview1 = UIView.init(frame: CGRect(x: 10, y: 50, width: self.view.frame.width - 20, height: 2))
        lineview1.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview1)
        
        let image2 = UIImageView.init(frame: CGRect(x: 10, y: 65, width: 25, height: 25))
        image2.image = UIImage(named: "pic")
        cell.contentView.addSubview(image2)
        //let label2 = UITextField(frame: CGRect(x: 45, y: 55, width: self.view.frame.width - 20, height: 40))
        label2.borderStyle = .none
        label2.placeholder = "Password"
        label2.isSecureTextEntry = true
        self.view.addSubview(label2)
        let lineview2 = UIView.init(frame: CGRect(x: 10, y: 95, width: self.view.frame.width - 20, height: 2))
        lineview2.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview2)
        let ButtonSecure = UIButton.init(frame: CGRect(x: self.view.frame.width - 40, y: 60, width: 25, height: 25))
        ButtonSecure.setImage(UIImage(named: "pic"), for: .normal)
        ButtonSecure.addTarget(self, action: #selector(ButtonSecure_Action), for: .touchUpInside)
        cell.contentView.addSubview(ButtonSecure)
        
        let Button1 = UIButton.init(frame: CGRect(x: self.view.frame.width - 160, y: 110, width: 150, height: 40))
        Button1.setTitle("Forget password", for: .normal)
        Button1.setTitleColor(.black, for: .normal)
        Button1.contentHorizontalAlignment = .right
        Button1.addTarget(self, action: #selector(Button1_action), for: .touchUpInside)
        cell.contentView.addSubview(Button1)
      
        
        let button_Login = UIButton.init(frame: CGRect(x: 10, y: 240, width: self.view.frame.width - 20, height: 40))
        button_Login.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        button_Login.setTitle("Login", for: .normal)
        button_Login.addTarget(self, action: #selector(ButtonLogin_action), for: .touchUpInside)
        cell.contentView.addSubview(button_Login)
        
        return cell
    }
    @objc func ButtonSecure_Action(button: UIButton){
        
        if label2.isSecureTextEntry == true{
            
            label2.isSecureTextEntry = false
            button.setImage(UIImage(named: "picHL"), for: .normal)
        }
        else{
            
            label2.isSecureTextEntry = true
            button.setImage(UIImage(named: "pic"), for: .normal)
        }
    }
    @objc func Button1_action(button: UIButton){
        
        let vc = ForgotPasswordTableViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func ButtonLogin_action(button: UIButton){
        
        //let vc = WelcomeTableViewController()
        let vc = UpdateProfileTableViewController()
        vc.index = 1
        self.navigationController?.pushViewController(vc, animated: true)
        //self.present(vc, animated: true, completion: nil)
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
