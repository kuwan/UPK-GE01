//
//  UpdateProfileTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let GenderButton = UIButton.init(frame: CGRect(x: screenWidth - 220*lengthPercent, y: 225*HeighPercent, width: 200*lengthPercent, height: 40*lengthPercent))
let BirthdayButton = UIButton.init(frame: CGRect(x: screenWidth - 220*lengthPercent, y: 270*HeighPercent, width: 200*lengthPercent, height: 40*lengthPercent))

let WeightButton = UIButton.init(frame: CGRect(x: screenWidth - 220*lengthPercent, y: 315*HeighPercent, width: 200*lengthPercent, height: 40*lengthPercent))

class UpdateProfileTableViewController: UITableViewController {
    
    var Weight = [String](), WeightUnit = [String]()
    let label = UILabel.init(frame: CGRect(x: 0, y: 300*lengthPercent, width: 375*lengthPercent, height: 40*lengthPercent))
    var index = 0
    // weight data
    private lazy var data: [[String]] = {
        
       
        for i in 1..<1000 {
            Weight.append("\(i)")
           // WeightUnit.append("\(i)")
        }
        for i in 1..<3 {
            if i == 1{
                WeightUnit.append("kg")
            }
            if i == 2{
                WeightUnit.append("lb")
            }
        }
        
        return [Weight, WeightUnit]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        if index == 1{
            self.navigationItem.title = "Create your profile"
            let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
            self.navigationItem.leftBarButtonItem = item
        }
        else{
            self.navigationItem.title = "Update your profile"
        }
        
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
        let cell = UITableViewCell.init(style: .default , reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let ProfileLabel = UILabel.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 130*lengthPercent))
        ProfileLabel.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(ProfileLabel)
        
        let ProfileImage = UIImageView.init(frame: CGRect(x: screenWidth/2 - 25*lengthPercent, y: 30*HeighPercent, width: 50*lengthPercent, height: 50*lengthPercent))
        //PadImage.backgroundColor = .green
        ProfileImage.image = UIImage(named: "ic_user_man_port")
        //ProfileImage.layer.cornerRadius = ProfileImage.frame.size.height/2
        //ProfileImage.clipsToBounds = true
        cell.contentView.addSubview(ProfileImage)
        
        let ProfileLabel1 = UILabel.init(frame: CGRect(x: 0, y: 80*HeighPercent, width: screenWidth, height: 30*lengthPercent))
        ProfileLabel1.textColor = UIColor.white
        ProfileLabel1.text = "13016490924"
        ProfileLabel1.textAlignment = .center
        cell.contentView.addSubview(ProfileLabel1)
        
        let ProfileLabel2 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 135*HeighPercent, width: self.view.frame.width - 20*lengthPercent , height: 40*lengthPercent))
        ProfileLabel2.text = "Your profile info will help RelieforMe to provide more customized program recommendations just for you"
        ProfileLabel2.textAlignment = .left
        ProfileLabel2.numberOfLines = 2
        ProfileLabel2.textColor = UIColor.orange
        ProfileLabel2.font = ProfileLabel2.font.withSize(14*lengthPercent)
        cell.contentView.addSubview(ProfileLabel2)
        
        let NameImage = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 190*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        NameImage.image = UIImage(named: "user_login_username")
        cell.contentView.addSubview(NameImage)
        let NameLabel = UILabel.init(frame: CGRect(x:38*lengthPercent, y: 180*HeighPercent, width: screenWidth - 250*lengthPercent, height: 40*lengthPercent))
        NameLabel.text = "  First Name"
        NameLabel.textAlignment = .left
        cell.contentView.addSubview(NameLabel)
        let NameField = UITextField(frame: CGRect(x: screenWidth - 220*lengthPercent, y: 180*HeighPercent, width: 200*lengthPercent, height: 40*lengthPercent))
        NameField.borderStyle = .none
        NameField.placeholder = "zzzzzzz"
        NameField.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(NameField)
        let lineview = UIView.init(frame: CGRect(x: screenWidth - 220*lengthPercent, y: 220*HeighPercent, width: 200*lengthPercent, height: 2*lengthPercent))
        lineview.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview)

        
        let GenderImage = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 235*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        GenderImage.image = UIImage(named: "user_login_sex")
        cell.contentView.addSubview(GenderImage)
        let GenderLabel = UILabel.init(frame: CGRect(x:38*lengthPercent, y: 225*HeighPercent, width: screenWidth - 250*lengthPercent, height: 40*lengthPercent))
        GenderLabel.text = "  Gender"
        GenderLabel.textAlignment = .left
        cell.contentView.addSubview(GenderLabel)
        //let GenderButton = UIButton.init(frame: CGRect(x: self.view.frame.width - 220, y: 225, width: 200, height: 40))
        GenderButton.setTitle("Male", for: .normal)
        GenderButton.setTitleColor(UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1), for: .normal)
        GenderButton.contentHorizontalAlignment = .right
        GenderButton.addTarget(self, action: #selector(GenderButton_select), for: .touchUpInside)
        cell.contentView.addSubview(GenderButton)
        //let GenderPicker = UIPickerView.init(frame: CGRect(x: self.view.frame.width - 220, y: 225, width: 200, height: 40))
        //cell.contentView.addSubview(GenderPicker)
        
        
        let BirthdayImage = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 280*HeighPercent, width: 28*lengthPercent, height: 23*lengthPercent))
        BirthdayImage.image = UIImage(named: "user_info_birth")
        cell.contentView.addSubview(BirthdayImage)
        let BirthdayLabel = UILabel.init(frame: CGRect(x:38*lengthPercent, y: 270*HeighPercent, width: screenWidth - 250*lengthPercent, height: 40*lengthPercent))
        BirthdayLabel.text = "  Birthday"
        BirthdayLabel.textAlignment = .left
        cell.contentView.addSubview(BirthdayLabel)
        //let BirthdayButton = UIButton.init(frame: CGRect(x: self.view.frame.width - 220, y: 270, width: 200, height: 40))
        BirthdayButton.setTitle("1994-04-19", for: .normal)
        BirthdayButton.setTitleColor(UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1), for: .normal)
        BirthdayButton.contentHorizontalAlignment = .right
        BirthdayButton.addTarget(self, action: #selector(BirthdayButton_select), for: .touchUpInside)
        cell.contentView.addSubview(BirthdayButton)
        
        let WeightImage = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 325*HeighPercent, width: 28*lengthPercent, height: 23*lengthPercent))
        WeightImage.image = UIImage(named: "user_info_weight")
        cell.contentView.addSubview(WeightImage)
        let WeightLabel = UILabel.init(frame: CGRect(x:38*lengthPercent, y: 315*HeighPercent, width: screenWidth - 250*lengthPercent, height: 40*lengthPercent))
        WeightLabel.text = "  Weight"
        WeightLabel.textAlignment = .left
        cell.contentView.addSubview(WeightLabel)
        //let WeightButton = UIButton.init(frame: CGRect(x: self.view.frame.width - 220, y: 325, width: 200, height: 40))
        WeightButton.setTitle("65 kg", for: .normal)
        WeightButton.setTitleColor(UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1), for: .normal)
        WeightButton.contentHorizontalAlignment = .right
        WeightButton.addTarget(self, action: #selector(WeightButton_Action), for: .touchUpInside)
        cell.contentView.addSubview(WeightButton)
        
        let ButtonSave = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 560*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        ButtonSave.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        ButtonSave.setTitle("SAVE", for: .normal)
        ButtonSave.addTarget(self, action: #selector(ButtonSave_Action), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(ButtonSave)
        
        return cell
    }
    @objc func ButtonSave_Action(button: UIButton){
        
        if index == 1{
            
            let vc = WelcomeTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
            //self.present(vc, animated: true, completion: nil)
        }
        else{
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    @objc func GenderButton_select(button: UIButton){
        
        let menu = UIAlertController(title: "Select", message: "", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "Male", style: .default) {(alertAction)->Void in
            GenderButton.setTitle("Male", for: .normal)
            self.view.addSubview(GenderButton)
        }
        let option2 = UIAlertAction(title: "Female", style: .default) {(alertAction)->Void in
            GenderButton.setTitle("Female", for: .normal)
            self.view.addSubview(GenderButton)
        }
        let option3 = UIAlertAction(title: "Confidential", style: .default) {(alertAction)->Void in
            GenderButton.setTitle("Confidential", for: .normal)
            self.view.addSubview(GenderButton)
            }
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
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default){
            (alertAction)->Void in
            
            let DataString: String = String(datePicker.date.description.prefix(10))
            //print("date select: \(DataString)")
            BirthdayButton.setTitle(DataString, for: .normal)
            BirthdayButton.setTitleColor(UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1), for: .normal)
            BirthdayButton.contentHorizontalAlignment = .right
            self.view.addSubview(BirthdayButton)
        })
        alertController.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel,handler:nil))
        
        alertController.view.addSubview(datePicker)
        
        self.present(alertController, animated: true, completion: nil)
            
    }
    @IBAction func WeightButton_Action(button: UIButton) {
        
        YDPickerView.showPickerView(targetView: self.view, dataSource: data).complete { (selectedState) in            
            
            let WeightString:String = self.Weight[selectedState[0]] + " " + self.WeightUnit[selectedState[1]]
            WeightButton.setTitle(WeightString, for: .normal)
            WeightButton.setTitleColor(UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1), for: .normal)
            WeightButton.contentHorizontalAlignment = .right
            self.view.addSubview(WeightButton)
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
