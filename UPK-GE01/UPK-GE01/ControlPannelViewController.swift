//
//  ControlPannelViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/16.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ControlPannelViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        self.navigationItem.title = "RelieforMe"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white
            , NSAttributedString.Key.font:UIFont.systemFont(ofSize: 25*lengthPercent)]
        Add_label()
        Add_button_test()
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if ((self.navigationController?.viewControllers.count)!) > 1{
            
            self.tabBarController?.tabBar.isHidden = true
        }
        else{
            
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    func Add_label(){
        
        let label1 = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 470*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label1.text = "Intensity info is in Program Details"
        label1.font = label1.font.withSize(14*lengthPercent)
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
        let label2 = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 495*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label2.text = "Intensity setting in last use: 6"
        label2.font = label2.font.withSize(14*lengthPercent)
        label2.textAlignment = .center
        self.view.addSubview(label2)
        
    }
    func Add_button_test(){
        
        let button_test = UIButton.init(frame: CGRect(x: 60*lengthPercent, y: 550*HeighPercent, width: 255*lengthPercent, height: 40*lengthPercent))
        //button_test.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button_test.addTarget(self, action: #selector(buttonAction_Pairing), for: .touchUpInside)
        self.view.addSubview(button_test)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 300*HeighPercent
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  10*HeighPercent
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100*HeighPercent
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
  
        let label_current = UILabel.init(frame: CGRect(x: 75*lengthPercent, y: 6*HeighPercent, width: 225*lengthPercent, height: 20*lengthPercent))
        label_current.text = "CURRENT PROGRAM"
        label_current.textAlignment = .center
        //label_current.textColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        cell.contentView.addSubview(label_current)
        
        let button_favofite = UIButton.init(frame: CGRect(x: 285*lengthPercent, y: 6*HeighPercent, width: 30*lengthPercent, height: 24*lengthPercent))
        // button.backgroundColor = UIColor.lightGray
        button_favofite.setImage(UIImage(named: "lin_like_full_grey"), for: .normal)
        //button_favofite.setTitle("test", for: .highlighted)
        button_favofite.addTarget(self, action: #selector(buttonAction_favorite), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_favofite)
        
        let label_name = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 40*HeighPercent, width: 255*lengthPercent, height: 50*lengthPercent))
        label_name.text = "Wrist Stiff Muscle Massage-Advanced"
        label_name.textColor = .gray
        label_name.textAlignment = .center
        label_name.numberOfLines = 0
        cell.contentView.addSubview(label_name)
        
        
        //tableView.indexPathForSelectedRow!.section
        return cell
    }
    @objc private func buttonAction_favorite(button: UIButton) {
        
        // print("do nothing")
        if button.imageView?.image == UIImage(named: "lin_like_full_grey"){
            button.setImage(UIImage(named: "lin_like_red"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "lin_like_full_grey"), for: .normal)
        }
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0{
            
            let vc = ProgramDetailsTableViewController()
            vc.index = 1
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @objc private func buttonAction_Pairing(button: UIButton) {
        
        let vc = PairingTableViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
