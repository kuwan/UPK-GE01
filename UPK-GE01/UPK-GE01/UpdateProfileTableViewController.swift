//
//  UpdateProfileTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class UpdateProfileTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Update your profile"
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
        let cell = UITableViewCell.init(style: .default , reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let ProfileLabel = UILabel.init(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 130))
        ProfileLabel.backgroundColor = .green
        cell.contentView.addSubview(ProfileLabel)
        
        let ProfileImage = UIImageView.init(frame: CGRect(x: self.view.frame.width/2 - 25, y: 30, width: 50, height: 50))
        //PadImage.backgroundColor = .green
        ProfileImage.image = UIImage(named: "pic1")
        ProfileImage.layer.cornerRadius = ProfileImage.frame.size.height/2
        ProfileImage.clipsToBounds = true
        cell.contentView.addSubview(ProfileImage)
        
        let ProfileLabel1 = UILabel.init(frame: CGRect(x: 0, y: 90, width: self.view.frame.width, height: 30))
       // ProfileLabel1.backgroundColor = .green
        ProfileLabel1.text = "13016490924"
        ProfileLabel1.textAlignment = .center
        cell.contentView.addSubview(ProfileLabel1)
        
        let ProfileLabel2 = UILabel.init(frame: CGRect(x: 10, y: 135, width: self.view.frame.width - 20 , height: 40))
        // ProfileLabel1.backgroundColor = .green
        ProfileLabel2.text = "Your profile info will help RelieforMe to provide more customized program recommendations just for you"
        ProfileLabel2.textAlignment = .left
        ProfileLabel2.numberOfLines = 2
        ProfileLabel2.textColor = UIColor.orange
        ProfileLabel2.font = ProfileLabel2.font.withSize(14)
        cell.contentView.addSubview(ProfileLabel2)
        
        let NameImage = UIImageView.init(frame: CGRect(x: 10, y: 190, width: 28, height: 23))
        NameImage.image = UIImage(named: "pic")
        cell.contentView.addSubview(NameImage)
        let NameLabel = UILabel.init(frame: CGRect(x:38, y: 180, width: self.view.frame.width - 250, height: 40))
        NameLabel.text = "  First Name"
        NameLabel.textAlignment = .left
        cell.contentView.addSubview(NameLabel)
        let NameField = UITextField(frame: CGRect(x: self.view.frame.width - 220, y: 180, width: 200, height: 40))
        NameField.borderStyle = .line
        NameField.placeholder = "zzzzzzz"
        self.view.addSubview(NameField)

        
        let GenderImage = UIImageView.init(frame: CGRect(x: 10, y: 235, width: 28, height: 23))
        GenderImage.image = UIImage(named: "pic")
        cell.contentView.addSubview(GenderImage)
        let GenderLabel = UILabel.init(frame: CGRect(x:38, y: 225, width: self.view.frame.width - 250, height: 40))
        GenderLabel.text = "  Gender"
        GenderLabel.textAlignment = .left
        cell.contentView.addSubview(GenderLabel)
        let GenderButton = UIButton.init(frame: CGRect(x: self.view.frame.width - 220, y: 225, width: 200, height: 40))
        GenderButton.setTitle("Male", for: .normal)
        GenderButton.setTitleColor(UIColor.black, for: .normal)
        GenderButton.contentHorizontalAlignment = .right
        GenderButton.addTarget(self, action: #selector(GenderButton_select), for: .touchUpInside)
        cell.contentView.addSubview(GenderButton)
        
        let BirthdayImage = UIImageView.init(frame: CGRect(x: 10, y: 280, width: 28, height: 23))
        BirthdayImage.image = UIImage(named: "pic")
        cell.contentView.addSubview(BirthdayImage)
        let BirthdayLabel = UILabel.init(frame: CGRect(x:38, y: 270, width: self.view.frame.width - 250, height: 40))
        BirthdayLabel.text = "  Birthday"
        BirthdayLabel.textAlignment = .left
        cell.contentView.addSubview(BirthdayLabel)
        let BirthdayButton = UIButton.init(frame: CGRect(x: self.view.frame.width - 220, y: 270, width: 200, height: 40))
        BirthdayButton.setTitle("1994-04-19", for: .normal)
        BirthdayButton.setTitleColor(UIColor.black, for: .normal)
        BirthdayButton.contentHorizontalAlignment = .right
        BirthdayButton.addTarget(self, action: #selector(BirthdayButton_select), for: .touchUpInside)
        cell.contentView.addSubview(BirthdayButton)
        
        
        
        let WeightImage = UIImageView.init(frame: CGRect(x: 10, y: 325, width: 28, height: 23))
        WeightImage.image = UIImage(named: "pic")
        cell.contentView.addSubview(WeightImage)
        let WeightLabel = UILabel.init(frame: CGRect(x:38, y: 315, width: self.view.frame.width - 250, height: 40))
        WeightLabel.text = "  Weight"
        WeightLabel.textAlignment = .left
        cell.contentView.addSubview(WeightLabel)
        
        
        
        let button_Save = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_Save.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_Save.setTitle("SAVE", for: .normal)
        //button_next.addTarget(self, action: #selector(buttonAction_save), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_Save)
        
        return cell
    }
    
    @objc func GenderButton_select(button: UIButton){
        
        let menu = UIAlertController(title: "Select", message: "", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "Male", style: .default, handler: nil)
        let option2 = UIAlertAction(title: "Female", style: .default, handler: nil)
        let option3 = UIAlertAction(title: "Confidential", style: .default, handler: nil)
        //let option4 = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        
        
        menu.addAction(option1)
        menu.addAction(option2)
        menu.addAction(option3)
        
        
        self.present(menu, animated: true, completion: nil)
    }
    
    @IBAction func BirthdayButton_select(sender: AnyObject) {
        
        let alertController:UIAlertController = UIAlertController(title: "\n\n\n\n\n\n\n\n\n\n\n\n", message: nil, preferredStyle: UIAlertController.Style.alert)
       
        let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: 250, height: 300))
        datePicker.locale = NSLocale(localeIdentifier: "en_US") as Locale
        datePicker.datePickerMode = .date
        // set default time
        datePicker.date = NSDate() as Date
        // 响应事件（只要滚轮变化就会触发）
        // datePicker.addTarget(self, action:Selector("datePickerValueChange:"), forControlEvents: UIControlEvents.ValueChanged)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil))
        /*{
            (alertAction)->Void in
            print("date select: \(datePicker.date.description)")
            获取上一节中自定义的按钮外观DateButton类，设置DateButton类属性thedate
            let myDateButton=self.Datebutt as? DateButton
            myDateButton?.thedate=datePicker.date
            强制刷新
            myDateButton?.setNeedsDisplay()
        })*/
        alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel,handler:nil))
        
        alertController.view.addSubview(datePicker)
        
        self.present(alertController, animated: true, completion: nil)
            
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
