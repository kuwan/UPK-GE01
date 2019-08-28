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
        
        return screenHeight
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let AppImage = UIImageView.init(frame: CGRect(x: screenWidth/2 - 40*lengthPercent, y: 50*HeighPercent, width: 80*lengthPercent, height: 80*lengthPercent))
        AppImage.image = UIImage(named: "ic_launcher")
        cell.contentView.addSubview(AppImage)
        
        let AppName = UILabel.init(frame: CGRect(x: 0, y: 150*HeighPercent, width: screenWidth, height: 50*lengthPercent))
        AppName.text = "RelieforMe"
        AppName.textAlignment = .center
        AppName.font = AppName.font.withSize(22*lengthPercent)
        cell.contentView.addSubview(AppName)
       
       
        let lineview1 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 300*HeighPercent, width: screenWidth - 20*lengthPercent, height: 1*lengthPercent))
        lineview1.backgroundColor = UIColor.gray
        self.view.addSubview(lineview1)
        
        let AppVersion = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 300*HeighPercent, width: screenWidth/2 - 10*lengthPercent, height: 50*lengthPercent))
        AppVersion.text = "APP Version"
        AppVersion.textAlignment = .left
        AppVersion.font = AppName.font.withSize(19*lengthPercent)
        cell.contentView.addSubview(AppVersion)
       
        
        let AppVersion1 = UILabel.init(frame: CGRect(x: screenWidth/2, y: 300*HeighPercent, width: screenWidth/2 - 10*lengthPercent, height: 50*lengthPercent))
        AppVersion1.text = "04.05"
        AppVersion1.textAlignment = .right
        AppVersion1.font = AppName.font.withSize(19*lengthPercent)
        cell.contentView.addSubview(AppVersion1)
        
        
        let lineview2 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 350*HeighPercent, width: screenWidth - 20*lengthPercent, height: 1*lengthPercent))
        lineview2.backgroundColor = UIColor.gray
        self.view.addSubview(lineview2)
        
        let FwVersion = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 360*HeighPercent, width: screenWidth/2 - 10*lengthPercent, height: 40*lengthPercent))
        FwVersion.text = "Firmware Version"
        FwVersion.textAlignment = .left
        FwVersion.font = AppName.font.withSize(19*lengthPercent)
        cell.contentView.addSubview(FwVersion)
        
        let FwVersion1 = UILabel.init(frame: CGRect(x: screenWidth/2, y: 360*HeighPercent, width: screenWidth/2 - 10*lengthPercent, height: 40*lengthPercent))
        FwVersion1.text = "04.01"
        FwVersion1.textAlignment = .right
        FwVersion1.font = AppName.font.withSize(19*lengthPercent)
        cell.contentView.addSubview(FwVersion1)
        
        
        let lineview3 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 400*HeighPercent, width: screenWidth - 20*lengthPercent, height: 1*lengthPercent))
        lineview3.backgroundColor = UIColor.gray
        self.view.addSubview(lineview3)
        

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
