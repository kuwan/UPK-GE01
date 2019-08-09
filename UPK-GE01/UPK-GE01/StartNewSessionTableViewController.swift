//
//  StartNewSessionTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/30.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class StartNewSessionTableViewController: UITableViewController {

    var session = [["Relieve"], ["Strengthen"], ["Relax"]]
    var session_decribe = ["Programs designed to help relieve your muscle and joint pain and stiffness", "Programs designed to help strenghten and restore your muscles and promote movement", "Programs designed to massage and relax your muscles"]
    var session_image = ["pic1", "pic1", "pic1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Start New Session"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        self.tableView.sectionFooterHeight = 0
        self.tableView.sectionHeaderHeight = 0
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
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        //tableView.sectionFooterHeight = 0.01
        //tableView.sectionHeaderHeight = 0.01
        return  20
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        
        
        if indexPath.section == 0 {
            
            let headerLable = UILabel.init(frame: CGRect(x: 10, y: 55, width: self.view.frame.width - 20, height: 20))
            headerLable.text = "What would you like to do?"
            headerLable.textAlignment = .center
            cell.contentView.addSubview(headerLable)
        }
        else {
            let SessionImage = UIImageView.init(frame: CGRect(x: 5, y: 15, width: 90, height: 90))
            SessionImage.image = UIImage(named: "pic1")
            SessionImage.layer.cornerRadius = SessionImage.frame.size.height/2
            SessionImage.clipsToBounds = true
            cell.contentView.addSubview(SessionImage)
            
            let nameLabel = UILabel.init(frame: CGRect(x: 117, y: 1, width: self.view.frame.width - 117, height: 37))
            nameLabel.text = session[indexPath.section-1][indexPath.row]
            nameLabel.font = nameLabel.font.withSize(17)
            nameLabel.textColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
            cell.contentView.addSubview(nameLabel)
            
            let detailLable = UILabel.init(frame: CGRect(x: 117, y: 30, width: self.view.frame.width - 117, height: 70))
            detailLable.text = session_decribe[indexPath.section-1]
            detailLable.font = nameLabel.font.withSize(15)
            detailLable.numberOfLines = 0
            cell.contentView.addSubview(detailLable)
            
        }
        
       
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1{
            
            let vc = SelectAreaTableViewController()
            vc.index = 1
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.section == 2{
            
            let vc = SelectAreaTableViewController()
            vc.index = 2
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.section == 3{
            
            let vc = SelectAreaTableViewController()
            vc.index = 3
            self.navigationController?.pushViewController(vc, animated: true)
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
