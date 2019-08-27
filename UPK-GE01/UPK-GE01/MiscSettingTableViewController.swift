//
//  MiscSettingTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class MiscSettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Misc Settings"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        self.tableView.sectionFooterHeight = 0
        self.tableView.sectionHeaderHeight = 0
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
        return 2
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50*HeighPercent
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 20*HeighPercent
    }
    //override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
     //   return self.view.frame.height - 130
   // }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default , reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        
        if indexPath.row == 0{
            let FontImage = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 13*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
            FontImage.image = UIImage(named: "icon_more_about")
            cell.contentView.addSubview(FontImage)
            
            let FontLabel = UILabel.init(frame: CGRect(x: 35*lengthPercent, y: 0, width: screenWidth - 75*lengthPercent, height: 50*lengthPercent))
            FontLabel.text = "  Font Setting"
            cell.contentView.addSubview(FontLabel)
            
            let Right_image = UIImageView.init(frame: CGRect(x: screenWidth - 40*lengthPercent, y: 13*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
            Right_image.image = UIImage(named: "lin_right")
            cell.contentView.addSubview(Right_image)
        }
        else{
            let PadImage = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 13*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
            PadImage.image = UIImage(named: "icon_more_help")
            cell.contentView.addSubview(PadImage)
            
            let PadLabel = UILabel.init(frame: CGRect(x:35*lengthPercent, y: 0, width: screenWidth - 75*lengthPercent, height: 50*lengthPercent))
            PadLabel.text = "  Pad Placement Display"
            PadLabel.textAlignment = .left
            cell.contentView.addSubview(PadLabel)
            
            let PadSwitch = UISwitch.init(frame: CGRect(x:screenWidth - 75*lengthPercent, y: 13*HeighPercent, width: 25*lengthPercent, height: 10*lengthPercent))
            PadSwitch.onTintColor = UIColor(red: 0/255, green: 204.0/255.0, blue: 204.0/255.0, alpha: 1)
            PadSwitch.tintColor = .gray
            cell.contentView.addSubview(PadSwitch)
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            let menu = UIAlertController(title: "Select TextSize", message: "", preferredStyle: .alert)
            let option1 = UIAlertAction(title: "Regular", style: .default, handler: nil)
            let option2 = UIAlertAction(title: "Big", style: .default, handler: nil)
            let option3 = UIAlertAction(title: "Huge", style: .default, handler: nil)
            
            menu.addAction(option1)
            menu.addAction(option2)
            menu.addAction(option3)
            
            self.present(menu, animated: true, completion: nil)
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
