//
//  StrengthQuestionTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/30.
//  Copyright © 2019 umehealltd. All rights reserved.
//
//40 230 300 420
import UIKit
let Squestion1_A = UIButton.init(frame: CGRect(x: 100*lengthPercent, y: 70*HeighPercent, width: UIScreen.main.bounds.width - 100, height: 25*lengthPercent))
let Squestion1_B = UIButton.init(frame: CGRect(x: 100*lengthPercent, y: 100*HeighPercent, width: UIScreen.main.bounds.width - 100, height: 25))
let Squestion1_C = UIButton.init(frame: CGRect(x: 100*lengthPercent, y: 130*HeighPercent, width: UIScreen.main.bounds.width - 100*lengthPercent, height: 25*lengthPercent))


let Squestion2_A = UIButton.init(frame: CGRect(x: 12*lengthPercent, y: 235*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion2_B = UIButton.init(frame: CGRect(x: 202*lengthPercent, y: 235*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion2_C = UIButton.init(frame: CGRect(x: 12*lengthPercent, y: 265*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion2_D = UIButton.init(frame: CGRect(x: 202*lengthPercent, y: 265*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))

let Squestion3_A = UIButton.init(frame: CGRect(x: 12*lengthPercent, y: 355*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion3_B = UIButton.init(frame: CGRect(x: 202*lengthPercent, y: 355*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion3_C = UIButton.init(frame: CGRect(x: 12*lengthPercent, y: 385*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion3_D = UIButton.init(frame: CGRect(x: 202*lengthPercent, y: 385*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))

let Squestion4_A = UIButton.init(frame: CGRect(x: 12*lengthPercent, y: 475*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion4_B = UIButton.init(frame: CGRect(x: 202*lengthPercent, y: 475*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion4_C = UIButton.init(frame: CGRect(x: 12*lengthPercent, y: 505*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))
let Squestion4_D = UIButton.init(frame: CGRect(x: 202*lengthPercent, y: 505*HeighPercent, width: 140*lengthPercent, height: 25*lengthPercent))

class StrengthQuestionTableViewController: UITableViewController {

    var position = "Calf"
    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        self.navigationItem.title = "Strengthen"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        AddPositon(string: position)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func AddPositon(string: String){
        
        let label = UILabel.init(frame: CGRect(x: 0, y: 10*HeighPercent, width: screenWidth, height: 30*lengthPercent))
        label.text = string
        label.textAlignment = .center
        self.view.addSubview(label)
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
        
        let Squestion1 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 40*HeighPercent, width: 360*lengthPercent, height: 25*lengthPercent))
        Squestion1.text = "(1)In general,what is your physcial activity level?"
        Squestion1.font = Squestion1.font.withSize(15*lengthPercent)
        Squestion1.numberOfLines = 1
        cell.contentView.addSubview(Squestion1)
        AddSelectButton(button: Squestion1_A,string: " None or very little")
        cell.contentView.addSubview(Squestion1_A)
        AddSelectButton(button: Squestion1_B,string: " Moderate")
        cell.contentView.addSubview(Squestion1_B)
        AddSelectButton(button: Squestion1_C,string: " High")
        cell.contentView.addSubview(Squestion1_C)
        
        
        
        let Squestion2 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 180*HeighPercent, width: 360*lengthPercent, height: 50*lengthPercent))
        Squestion2.text = "(2)How often have you been experiencing muscle weakness?"
        Squestion2.numberOfLines = 2
        Squestion2.font = Squestion2.font.withSize(15*lengthPercent)
        cell.contentView.addSubview(Squestion2)
        AddSelectButton(button: Squestion2_A,string: " Never")
        cell.contentView.addSubview(Squestion2_A)
        AddSelectButton(button: Squestion2_B,string: " Rarely")
        cell.contentView.addSubview(Squestion2_B)
        AddSelectButton(button: Squestion2_C,string: " Sometimes")
        cell.contentView.addSubview(Squestion2_C)
        AddSelectButton(button: Squestion2_D,string: " Often")
        cell.contentView.addSubview(Squestion2_D)
        
        
        let Squestion3 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 300*HeighPercent, width: 360*lengthPercent, height: 50*lengthPercent))
        Squestion3.text = "(3)How often have you been experiencing fatigue,tension or soreness in muscles?"
        Squestion3.numberOfLines = 2
        Squestion3.font = Squestion3.font.withSize(15*lengthPercent)
        cell.contentView.addSubview(Squestion3)
        AddSelectButton(button: Squestion3_A,string: " Never")
        cell.contentView.addSubview(Squestion3_A)
        AddSelectButton(button: Squestion3_B,string: " Rarely")
        cell.contentView.addSubview(Squestion3_B)
        AddSelectButton(button: Squestion3_C,string: " Sometimes")
        cell.contentView.addSubview(Squestion3_C)
        AddSelectButton(button: Squestion3_D,string: " Often")
        cell.contentView.addSubview(Squestion3_D)
        
        let Squestion4 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 420*HeighPercent, width: 360*lengthPercent, height: 50*lengthPercent))
        Squestion4.text = "(4)How often have you been experiencing muscle spasm?"
        Squestion4.numberOfLines = 2
        Squestion4.font = Squestion4.font.withSize(15*lengthPercent)
        cell.contentView.addSubview(Squestion4)
        AddSelectButton(button: Squestion4_A,string: " Never")
        cell.contentView.addSubview(Squestion4_A)
        AddSelectButton(button: Squestion4_B,string: " Rarely")
        cell.contentView.addSubview(Squestion4_B)
        AddSelectButton(button: Squestion4_C,string: " Sometimes")
        cell.contentView.addSubview(Squestion4_C)
        AddSelectButton(button: Squestion4_D,string: " Often")
        cell.contentView.addSubview(Squestion4_D)
        
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
        
        if (Squestion1_A.imageView?.image == UIImage(named: "btn_unselected")
            && Squestion1_B.imageView?.image == UIImage(named: "btn_unselected") && Squestion1_C.imageView?.image == UIImage(named: "btn_unselected")) || (Squestion2_A.imageView?.image == UIImage(named: "btn_unselected") && Squestion2_B.imageView?.image == UIImage(named: "btn_unselected") && Squestion2_C.imageView?.image == UIImage(named: "btn_unselected") && Squestion2_D.imageView?.image == UIImage(named: "btn_unselected")) || (Squestion3_A.imageView?.image == UIImage(named: "btn_unselected") && Squestion3_B.imageView?.image == UIImage(named: "btn_unselected") && Squestion3_C.imageView?.image == UIImage(named: "btn_unselected") && Squestion3_D.imageView?.image == UIImage(named: "btn_unselected")) || (Squestion4_A.imageView?.image == UIImage(named: "btn_unselected") && Squestion4_B.imageView?.image == UIImage(named: "btn_unselected") && Squestion4_C.imageView?.image == UIImage(named: "btn_unselected") && Squestion4_D.imageView?.image == UIImage(named: "btn_unselected")){
            
            let menu = UIAlertController(title: "", message: "Please fill in all questions", preferredStyle: .alert)
            //let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
            //let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
           // menu.addAction(option1)
           // menu.addAction(option2)
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
    @objc private func button_select(button: UIButton) {
        
        // print("do nothing")
        switch button {
        case Squestion1_A:
            Squestion1_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion1_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion1_B:
            Squestion1_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion1_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion1_C:
            Squestion1_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion1_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
            
        case Squestion2_A:
            Squestion2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion2_B:
            Squestion2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion2_C:
            Squestion2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion2_D:
            Squestion2_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion2_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion3_A:
            Squestion3_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion3_B:
            Squestion3_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion3_C:
            Squestion3_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion3_D:
            Squestion3_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion3_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion4_A:
            Squestion4_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion4_B:
            Squestion4_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion4_C:
            Squestion4_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_D.setImage(UIImage(named: "btn_unselected"), for: .normal)
            if button.imageView?.image == UIImage(named: "btn_unselected"){
                button.setImage(UIImage(named: "btn_selected"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Squestion4_D:
            Squestion4_B.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_C.setImage(UIImage(named: "btn_unselected"), for: .normal)
            Squestion4_A.setImage(UIImage(named: "btn_unselected"), for: .normal)
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
   func AddSelectButton(button: UIButton, string: String){
        
        button.setImage(UIImage(named: "btn_unselected"), for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitle(string, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(button_select), for: .touchUpInside)
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
