//
//  AboutSoftwareTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class AboutSoftwareTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "About Software"
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
        
        let AppImage = UIImageView.init(frame: CGRect(x: self.view.frame.width/2 - 40, y: 50, width: 80, height: 80))
        AppImage.image = UIImage(named: "pic1")
        cell.contentView.addSubview(AppImage)
        
        let AppName = UILabel.init(frame: CGRect(x: 0, y: 150, width: self.view.frame.width, height: 50))
        AppName.text = "RelieforMe"
        AppName.textAlignment = .center
        AppName.font = AppName.font.withSize(22)
        cell.contentView.addSubview(AppName)
        
        let AppVersion = UILabel.init(frame: CGRect(x: 10, y: 300, width: self.view.frame.width/2 - 10, height: 50))
        AppVersion.text = "APP Version"
        AppVersion.textAlignment = .left
        AppVersion.font = AppName.font.withSize(19)
        cell.contentView.addSubview(AppVersion)
        
        let AppVersion1 = UILabel.init(frame: CGRect(x: self.view.frame.width/2, y: 300, width: self.view.frame.width/2 - 10, height: 50))
        AppVersion1.text = "04.05"
        AppVersion1.textAlignment = .right
        AppVersion1.font = AppName.font.withSize(19)
        cell.contentView.addSubview(AppVersion1)
        
        let FwVersion = UILabel.init(frame: CGRect(x: 10, y: 360, width: self.view.frame.width/2 - 10, height: 40))
        FwVersion.text = "Firmware Version"
        FwVersion.textAlignment = .left
        FwVersion.font = AppName.font.withSize(19)
        cell.contentView.addSubview(FwVersion)
        
        let FwVersion1 = UILabel.init(frame: CGRect(x: self.view.frame.width/2, y: 350, width: self.view.frame.width/2 - 10, height: 40))
        FwVersion1.text = "04.01"
        FwVersion1.textAlignment = .right
        FwVersion1.font = AppName.font.withSize(19)
        cell.contentView.addSubview(FwVersion1)
        

        return cell
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
