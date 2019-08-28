//
//  RelieforMeTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/20.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
var screenWidth: CGFloat = UIScreen.main.bounds.width
var screenHeight: CGFloat = UIScreen.main.bounds.height
var lengthPercent: CGFloat = UIScreen.main.bounds.width/375 //base on iphone8(w:375,h:667)
var HeighPercent: CGFloat = UIScreen.main.bounds.height/667
class RelieforMeTableViewController: UITableViewController {

    var Login = false
    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        if Login == false{
            self.navigationItem.title = "RelieforMe"
            self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white
                , NSAttributedString.Key.font:UIFont.systemFont(ofSize: 25*lengthPercent)]
        }
        else{
            let deststoryboard = UIStoryboard(name: "Content", bundle: nil)
            let destvc = deststoryboard.instantiateViewController(withIdentifier: "MainInterface")
            self.present(destvc, animated: true, completion: nil)
        }
       
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
        
        if Login == false{
            let label1 = UILabel.init(frame: CGRect(x: 0, y: 40*HeighPercent, width: screenWidth, height: 40*lengthPercent))
            label1.text = "Welcome to RelieforMe"
            label1.textAlignment = .center
            cell.contentView.addSubview(label1)
            
            
            let ButtonOK = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 560*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
          
            ButtonOK.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            ButtonOK.setTitle("OK", for: .normal)
            ButtonOK.addTarget(self, action: #selector(ButtonOK_Action), for: .touchUpInside)
            cell.contentView.addSubview(ButtonOK)
        }
        return cell
    }
    @objc func ButtonOK_Action(button: UIButton){
        print("11111")
        let vc = PLViewController()
        vc.index = 4
        //self.present(vc, animated: true, completion: nil)
        //self.navigationController?.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    /*override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("11111")
        let vc = PLViewController()
        vc.index = 4
        self.navigationController?.pushViewController(vc, animated: true)
    }*/
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
