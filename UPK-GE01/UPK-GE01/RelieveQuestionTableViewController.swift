//
//  RelieveQuestionTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/30.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

let question2_A = UIButton.init(frame: CGRect(x: 50*lengthPercent, y: 215*HeighPercent, width: screenWidth - 50*lengthPercent, height: 25*lengthPercent))
let question2_B = UIButton.init(frame: CGRect(x: 50*lengthPercent, y: 245*HeighPercent, width: screenWidth - 50, height: 25*lengthPercent))
let question2_C = UIButton.init(frame: CGRect(x: 50*lengthPercent, y: 275*HeighPercent, width: screenWidth - 50, height: 25*lengthPercent))
let question2_D = UIButton.init(frame: CGRect(x: 50*lengthPercent, y: 305*HeighPercent, width: screenWidth - 50, height: 25*lengthPercent))
let question2_E = UIButton.init(frame: CGRect(x: 50*lengthPercent, y: 335*HeighPercent, width: screenWidth - 50, height: 25*lengthPercent))

let question4_A = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 525*HeighPercent, width: 40*lengthPercent, height: 25*lengthPercent))
let question4_B = UIButton.init(frame: CGRect(x: 60*lengthPercent, y: 525*HeighPercent, width: 40*lengthPercent, height: 25*lengthPercent))
let question4_C = UIButton.init(frame: CGRect(x: 110*lengthPercent, y: 525*HeighPercent, width: 40*lengthPercent, height: 25*lengthPercent))
let question4_D = UIButton.init(frame: CGRect(x: 160*lengthPercent, y: 525*HeighPercent, width: 50*lengthPercent, height: 25*lengthPercent))
let question4_E = UIButton.init(frame: CGRect(x: 220*lengthPercent, y: 525*HeighPercent, width: 60*lengthPercent, height: 25*lengthPercent))
let question4_F = UIButton.init(frame: CGRect(x: 290*lengthPercent, y: 525*HeighPercent, width: 60*lengthPercent, height: 25*lengthPercent))

let slider_level = UILabel.init(frame: CGRect(x: 0, y: 420*HeighPercent, width: screenWidth, height: 20*lengthPercent))

let ButtonSelect = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 155*HeighPercent, width: screenWidth - 20*lengthPercent, height: 25*lengthPercent))

class RelieveQuestionTableViewController: UITableViewController {

    var position = "Thigh"
    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        self.navigationItem.title = "Relieve"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        AddPositon(string: position)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func AddPositon(string: String){
        
        let label1 = UILabel.init(frame: CGRect(x: 0, y: 10*HeighPercent, width: screenWidth, height: 30*lengthPercent))
        label1.text = string
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
        let label2 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 40*HeighPercent, width: screenWidth, height: 50*lengthPercent))
        label2.text = "Tell us about the pain you have experienced over the last two weeks"
        label2.textAlignment = .left
        label2.font = label2.font.withSize(15*lengthPercent)
        label2.numberOfLines = 2
        self.view.addSubview(label2)
        
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
        
        return  screenHeight
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let Squestion1 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 100*HeighPercent, width: screenWidth, height: 50*lengthPercent))
        Squestion1.text = "(1)About how many days in the past w weeks have you been in pain?"
        Squestion1.textAlignment = .left
        Squestion1.font = Squestion1.font.withSize(15*lengthPercent)
        Squestion1.numberOfLines = 2
        cell.contentView.addSubview(Squestion1)
        //let button_select = UIButton.init(frame: CGRect(x: 10, y: 155, width: self.view.frame.width - 20, height: 25))
        ButtonSelect.backgroundColor = UIColor.white
        ButtonSelect.setTitle("  0", for: .normal)
        ButtonSelect.setTitleColor(UIColor.black, for: .normal)
        ButtonSelect.contentHorizontalAlignment = .left
        ButtonSelect.titleLabel?.textAlignment = .left
        ButtonSelect.layer.masksToBounds = true
        ButtonSelect.layer.borderWidth = 1
        ButtonSelect.layer.cornerRadius = 0.5
        ButtonSelect.addTarget(self, action: #selector(button_select2), for: .touchUpInside)
        cell.contentView.addSubview(ButtonSelect)   
        
        let Squestion2 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 185*HeighPercent, width: screenWidth, height: 25*lengthPercent))
        Squestion2.text = "(2)About how long have you had this pain?"
        Squestion2.textAlignment = .left
        Squestion2.numberOfLines = 2
        Squestion2.font = Squestion2.font.withSize(15*lengthPercent)
        cell.contentView.addSubview(Squestion2)
        AddSelectButton(button: question2_A,string: " For the past few days")
        cell.contentView.addSubview(question2_A)
        AddSelectButton(button: question2_B,string: " For the past few weeks")
        cell.contentView.addSubview(question2_B)
        AddSelectButton(button: question2_C,string: " For the past 6 months")
        cell.contentView.addSubview(question2_C)
        AddSelectButton(button: question2_D,string: " For the past year ")
        cell.contentView.addSubview(question2_D)
        AddSelectButton(button: question2_E,string: " For a year and longer")
        cell.contentView.addSubview(question2_E)
        
        
        let Squestion3 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 375*HeighPercent, width: self.view.frame.width, height: 40*lengthPercent))
        Squestion3.text = "(3)On the days that you have been in pain over the last 2 weeks,what has been your usual level of pain?"
        Squestion3.textAlignment = .left
        Squestion3.numberOfLines = 2
        Squestion3.font = Squestion3.font.withSize(15*lengthPercent)
        cell.contentView.addSubview(Squestion3)
        let slider_start = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 450*HeighPercent, width: 20*lengthPercent, height: 20*lengthPercent))
        slider_start.text = "0"
        slider_start.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(slider_start)
        let slider_end = UILabel.init(frame: CGRect(x: 345*lengthPercent, y: 450*HeighPercent, width: 20*lengthPercent, height: 20*lengthPercent))
        slider_end.text = "10"
        slider_end.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(slider_end)
        let slider = UISlider(frame: CGRect(x: 35*lengthPercent, y: 455*HeighPercent, width: 300*lengthPercent, height: 10*lengthPercent))
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.value = 0
        slider.minimumTrackTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        slider.maximumTrackTintColor = UIColor.gray
        slider.addTarget(self, action: #selector(SliderDidChange(_:)), for: .valueChanged)
        cell.contentView.addSubview(slider)
        slider_level.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        slider_level.textAlignment = .center
        slider_level.text = "No pain - 0"
        cell.contentView.addSubview(slider_level)
      
        
        let Squestion4 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 470*HeighPercent, width: screenWidth, height: 50*lengthPercent))
        Squestion4.text = "(4)On average,how many hours has this usual pain lasted each day?"
        Squestion4.textAlignment = .left
        Squestion4.numberOfLines = 2
        Squestion4.font = Squestion4.font.withSize(15*lengthPercent)
        cell.contentView.addSubview(Squestion4)
        AddSelectButton1(button: question4_A,string: "1-2")
        cell.contentView.addSubview(question4_A)
        AddSelectButton1(button: question4_B,string: "3-5")
        cell.contentView.addSubview(question4_B)
        AddSelectButton1(button: question4_C,string: "6-8")
        cell.contentView.addSubview(question4_C)
        AddSelectButton1(button: question4_D,string: "9-12")
        cell.contentView.addSubview(question4_D)
        AddSelectButton1(button: question4_E,string: "12-18")
        cell.contentView.addSubview(question4_E)
        AddSelectButton1(button: question4_F,string: "18-24")
        cell.contentView.addSubview(question4_F)
        
        
        
        let button_next = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 560*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        button_next.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_next.setTitle("Next", for: .normal)
        button_next.addTarget(self, action: #selector(buttonAction_next), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_next)

        return cell
    }
    @objc private func buttonAction_next(button: UIButton) {
        
        if (question2_A.imageView?.image == UIImage(named: "btn_unselected")
            && question2_B.imageView?.image == UIImage(named: "btn_unselected") && question2_C.imageView?.image == UIImage(named: "btn_unselected") && question2_D.imageView?.image == UIImage(named: "btn_unselected") && question2_E.imageView?.image == UIImage(named: "btn_unselected")) ||  (question4_A.imageView?.image == UIImage(named: "btn_unselected") && question4_B.imageView?.image == UIImage(named: "btn_unselected") && question4_C.imageView?.image == UIImage(named: "btn_unselected") && question4_D.imageView?.image == UIImage(named: "btn_unselected") && question4_E.imageView?.image == UIImage(named: "btn_unselected")){
            
            let menu = UIAlertController(title: "", message: "Please fill in all questions", preferredStyle: .alert)
            //let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
            //let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
            //menu.addAction(option1)
            //menu.addAction(option2)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                self.presentedViewController?.dismiss(animated: false, completion: nil)
            }
            
            self.present(menu, animated: true, completion: nil)
            
        }
        else{
            let vc = SuggestedProgramsTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    @objc private func SliderDidChange(_ sender: UISlider){
        
        sender.value.round()
        //print(sender.value)
        
        slider_level.textAlignment = .center
        switch sender.value {
        case 0.0:
            slider_level.text = "No pain - 0"
        case 1.0:
            slider_level.text = "Mild - 1"
        case 2.0:
            slider_level.text = "Mild - 2"
        case 3.0:
            slider_level.text = "Mild - 3"
        case 4.0:
            slider_level.text = "Moderate - 4"
        case 5.0:
            slider_level.text = "Moderate - 5"
        case 6.0:
            slider_level.text = "Severe - 6"
        case 7.0:
            slider_level.text = "Severe - 7"
        case 8.0:
            slider_level.text = "Very severe - 8"
        case 9.0:
            slider_level.text = "Very severe - 9"
        case 10.0:
            slider_level.text = "Worst pain possible - 10"
        default:
            slider_level.text = "No pain - 0"
        }
        self.view.addSubview(slider_level)
    }
    @objc private func button_select(button: UIButton) {
        
        // print("do nothing")
        switch button {
        
        case question2_A:
            question2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_E.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_B:
            question2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_E.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_C:
            question2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_E.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_D:
            question2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_E.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question2_E:
            question2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            question2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        
            
        default:
            break
            
            
        }
    }
    @objc private func button_select1(button: UIButton) {
        
        // print("do nothing")
        switch button {
            
        case question4_A:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_B:
            question4_A.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_C:
            question4_B.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_D:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_E:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            question4_F.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case question4_F:
            question4_B.backgroundColor = UIColor.white
            question4_C.backgroundColor = UIColor.white
            question4_D.backgroundColor = UIColor.white
            question4_E.backgroundColor = UIColor.white
            question4_A.backgroundColor = UIColor.white
            
            if button.backgroundColor == UIColor.white{
                button.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
            
            
        default:
            break
            
            
        }
    }
    func AddSelectButton(button: UIButton, string: String){
        
        button.setImage(UIImage(named: "btn_unselected"), for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitle(string, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(button_select), for: .touchUpInside)
    }
    func AddSelectButton1(button: UIButton, string: String){
        
        button.setTitle(string, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.contentHorizontalAlignment = .center
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.white
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 0.5
        //button.layer.backgroundColor =
        
        
        
        //button_test.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button.addTarget(self, action: #selector(button_select1), for: .touchUpInside)
    }
    @objc private func button_select2(button: UIButton) {
        
        let menu = UIAlertController(title: "", message: "", preferredStyle: .alert)
        let option0 = UIAlertAction(title: "  0", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  0", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option1 = UIAlertAction(title: "  1", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  1", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option2 = UIAlertAction(title: "  2", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  2", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option3 = UIAlertAction(title: "  3", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  3", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option4 = UIAlertAction(title: "  4", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  4", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option5 = UIAlertAction(title: "  5", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  5", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option6 = UIAlertAction(title: "  6", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  6", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option7 = UIAlertAction(title: "  7", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  7", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option8 = UIAlertAction(title: "  8", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  8", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option9 = UIAlertAction(title: "  9", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  9", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option10 = UIAlertAction(title: "  10", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  10", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option11 = UIAlertAction(title: "  11", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  11", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option12 = UIAlertAction(title: "  12", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  12", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option13 = UIAlertAction(title: "  13", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  13", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        let option14 = UIAlertAction(title: "  14", style: .default) {(alertAction)->Void in
            ButtonSelect.setTitle("  14", for: .normal)
            self.view.addSubview(ButtonSelect)
        }
        
        menu.addAction(option0)
        menu.addAction(option1)
        menu.addAction(option2)
        menu.addAction(option3)
        menu.addAction(option4)
        menu.addAction(option5)
        menu.addAction(option6)
        menu.addAction(option7)
        menu.addAction(option8)
        menu.addAction(option9)
        menu.addAction(option10)
        menu.addAction(option11)
        menu.addAction(option12)
        menu.addAction(option13)
        menu.addAction(option14)
        
        self.present(menu, animated: true, completion: nil)
        
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
