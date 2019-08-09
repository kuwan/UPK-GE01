//
//  WarningsTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/29.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class WarningsTableViewController: UITableViewController {

    let warnings = "test"
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Warnings"
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
        
        return  600
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        
        let label_name = UILabel.init(frame: CGRect(x: 10, y: 6, width: 300, height: 20))
        label_name.text = warnings
        label_name.numberOfLines = 2
        label_name.textColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        cell.contentView.addSubview(label_name)
        
        let button_read = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_read.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_read.setTitle("Read and Understand", for: .normal)
        button_read.addTarget(self, action: #selector(buttonAction_read), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_read)
        

        return cell
    }
    @objc private func buttonAction_read(button: UIButton) {
        
        if index == 1{
            
            let vc = PairingTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else{
            //self.navigationController?.popToRootViewController(animated: true)
            self.tabBarController?.selectedIndex = 1
            
        }  
    }
}
