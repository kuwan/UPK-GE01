//
//  RelaxTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/18.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
  let Relax_name = [["Stiff Muscle Massage - Basic"],["Stiff Muscle Massage - Advanced "],["Sore Muscle Massage"],["Tension Relief Massage"],["Muscle Spasm Massage"],["PComplete Massage"],["Stress Relief Massage"]]
class RelaxTableViewController: UITableViewController {
    
  
    let Relax_detial1 = "test1"//"Provides relief for mild to moderate body or muscle pain"
    let Relax_detial2 = "test2"//Promotes circulation and relaxation of a kneading massage..."
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
       
        
        let tableView = UITableView.init(frame: UIScreen.main.bounds, style: .grouped)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 7
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 5
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 5
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return  150
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        
        
        let label_name = UILabel.init(frame: CGRect(x: 10, y: 6, width: self.view.frame.width - 60, height: 40))
        label_name.text = Relax_name[indexPath.section][indexPath.row]
        label_name.numberOfLines = 0
        label_name.font = label_name.font.withSize(15)
        label_name.font = UIFont.boldSystemFont(ofSize: 15)
        label_name.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_name)
        
        let label_detial1 = UILabel.init(frame: CGRect(x: 10, y: 46, width: self.view.frame.width - 60, height: 40))
        label_detial1.text = Relax_detial1
        label_detial1.numberOfLines = 2
        cell.contentView.addSubview(label_detial1)
        
        let label_detial2 = UILabel.init(frame: CGRect(x: 10, y: 66, width: self.view.frame.width - 60, height: 40))
        label_detial2.text = Relax_detial2
        label_detial2.numberOfLines = 2
        cell.contentView.addSubview(label_detial2)
        
        let lable_duration = UILabel.init(frame: CGRect(x: 10, y: 100, width: self.view.frame.width - 60, height: 20))
        lable_duration.text = "Duration: 20 min"
        cell.contentView.addSubview(lable_duration)
        
        let lable_myrating = UILabel.init(frame: CGRect(x: 10, y: 120, width: self.view.frame.width - 60, height: 20))
        lable_myrating.text = "My rating *****"
        cell.contentView.addSubview(lable_myrating)
        
        let button_favorite = UIButton.init(frame: CGRect(x: self.view.frame.width - 50, y: 20, width: 30, height: 24))
        // button.backgroundColor = UIColor.lightGray
        button_favorite.setImage(UIImage(named: "lin_like_grey"), for: .normal)
      //  button_favorite.setTitle("test", for: .highlighted)
        button_favorite.addTarget(self, action: #selector(buttonAction_favorite), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_favorite)
        
        let button_start = UIButton.init(frame: CGRect(x: self.view.frame.width - 50, y: 100, width: 30, height: 24))
        // button.backgroundColor = UIColor.lightGray
        button_start.setImage(UIImage(named: "lin_start"), for: .normal)
        //button_start.setTitle("test", for: .highlighted)
        button_start.addTarget(self, action: #selector(buttonAction_start), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_start)
        
        return cell
    }
    @objc private func buttonAction_favorite(button: UIButton) {
        
        print("do nothing")
        if button.imageView?.image == UIImage(named: "lin_like_grey"){
            button.setImage(UIImage(named: "lin_like_red"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "lin_like_grey"), for: .normal)
        }
        
    }
    @objc private func buttonAction_start(button: UIButton) {
        
        let vc = SelectAreaTableViewController()
         vc.index = 0
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = ProgramDetailsTableViewController()
        vc.program_section = indexPath.section + 23
        vc.program_row = indexPath.row
        vc.index = 0
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}


