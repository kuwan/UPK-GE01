//
//  PairingTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/2.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class PairingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pairing"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        Add_label()
        Add_button()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func Add_label(){
        
        let label1 = UILabel.init(frame: CGRect(x: 10, y: 10, width: 255, height: 20))
        label1.text = "test"
        label1.font = label1.font.withSize(14)
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
    }
    func Add_button(){
        
        let button1 = UIButton.init(frame: CGRect(x: 20, y: 500, width: 160, height: 40))
        button1.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button1.setTitle("(RE)START", for: .normal)
        button1.addTarget(self, action: #selector(buttonAction_Start), for: .touchUpInside)
        self.view.addSubview(button1)
        
        let button2 = UIButton.init(frame: CGRect(x: 195, y: 500, width: 160, height: 40))
        button2.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button2.setTitle("SKIP", for: .normal)
        button2.addTarget(self, action: #selector(buttonAction_Skip), for: .touchUpInside)
        self.view.addSubview(button2)
        
    }
    
    @objc private func buttonAction_Start(button: UIButton) {
        
        let menu = UIAlertController(title: "Message", message: "test", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        menu.addAction(option1)
        menu.addAction(option2)
        
        self.present(menu, animated: true, completion: nil)
        
    }
    @objc private func buttonAction_Skip(button: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
