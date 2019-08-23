//
//  RelaxQuestionTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/30.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let Rquestion1_A = UIButton.init(frame: CGRect(x: 12, y: 110, width: 140, height: 25))
let Rquestion1_B = UIButton.init(frame: CGRect(x: 202, y: 110, width: 140, height: 25))
let Rquestion1_C = UIButton.init(frame: CGRect(x: 12, y: 140, width: 140, height: 25))
let Rquestion1_D = UIButton.init(frame: CGRect(x: 202, y: 140, width: 140, height: 25))

let Rquestion2_A = UIButton.init(frame: CGRect(x: 12, y: 230, width: 140, height: 25))
let Rquestion2_B = UIButton.init(frame: CGRect(x: 202, y: 230, width: 140, height: 25))
let Rquestion2_C = UIButton.init(frame: CGRect(x: 12, y: 260, width: 140, height: 25))
let Rquestion2_D = UIButton.init(frame: CGRect(x: 202, y: 260, width: 140, height: 25))

let Rquestion3_A = UIButton.init(frame: CGRect(x: 12, y: 350, width: 140, height: 25))
let Rquestion3_B = UIButton.init(frame: CGRect(x: 202, y: 350, width: 140, height: 25))
let Rquestion3_C = UIButton.init(frame: CGRect(x: 12, y: 380, width: 140, height: 25))
let Rquestion3_D = UIButton.init(frame: CGRect(x: 202, y: 380, width: 140, height: 25))

class RelaxQuestionTableViewController: UITableViewController {

    var position = "Calf"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Relax"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        AddPositon(string: position)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func AddPositon(string: String){
        
        let label = UILabel.init(frame: CGRect(x: 0, y: 10, width: self.view.frame.width, height: 50))
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
        
        return  600
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
            
        let Rquestion1 = UILabel.init(frame: CGRect(x: 10, y: 50, width: 360, height: 50))
        Rquestion1.text = "(1)How often have you been experiencing stiff or tight muscles?"
        Rquestion1.numberOfLines = 2
        cell.contentView.addSubview(Rquestion1)
        AddSelectButton(button: Rquestion1_A,string: " Never")
        cell.contentView.addSubview(Rquestion1_A)
        AddSelectButton(button: Rquestion1_B,string: " Rarely")
        cell.contentView.addSubview(Rquestion1_B)
        AddSelectButton(button: Rquestion1_C,string: " Sometimes")
        cell.contentView.addSubview(Rquestion1_C)
        AddSelectButton(button: Rquestion1_D,string: " Often")
        cell.contentView.addSubview(Rquestion1_D)
        
       
        
        
        let Rquestion2 = UILabel.init(frame: CGRect(x: 10, y: 170, width: 360, height: 50))
        Rquestion2.text = "(2)How often have you been experiencing fatigue,tension or soreness in muscles?"
        Rquestion2.numberOfLines = 2
        cell.contentView.addSubview(Rquestion2)
        AddSelectButton(button: Rquestion2_A,string: " Never")
        cell.contentView.addSubview(Rquestion2_A)
        AddSelectButton(button: Rquestion2_B,string: " Rarely")
        cell.contentView.addSubview(Rquestion2_B)
        AddSelectButton(button: Rquestion2_C,string: " Sometimes")
        cell.contentView.addSubview(Rquestion2_C)
        AddSelectButton(button: Rquestion2_D,string: " Often")
        cell.contentView.addSubview(Rquestion2_D)
        
      
        let Rquestion3 = UILabel.init(frame: CGRect(x: 10, y: 290, width: 360, height: 50))
        Rquestion3.text = "(3)How often have you been experiencing muscle spasm?"
        Rquestion3.numberOfLines = 2
        cell.contentView.addSubview(Rquestion3)
        AddSelectButton(button: Rquestion3_A,string: " Never")
        cell.contentView.addSubview(Rquestion3_A)
        AddSelectButton(button: Rquestion3_B,string: " Rarely")
        cell.contentView.addSubview(Rquestion3_B)
        AddSelectButton(button: Rquestion3_C,string: " Sometimes")
        cell.contentView.addSubview(Rquestion3_C)
        AddSelectButton(button: Rquestion3_D,string: " Often")
        cell.contentView.addSubview(Rquestion3_D)
        
        
        let button_next = UIButton.init(frame: CGRect(x: 10, y: 560, width: self.view.frame.width - 20, height: 40))
        button_next.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_next.setTitle("Next", for: .normal)
        button_next.addTarget(self, action: #selector(buttonAction_next), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_next)
        
        return cell
    }
  
    @objc private func button_select(button: UIButton) {
        
        // print("do nothing")
        switch button {
        case Rquestion1_A:
             Rquestion1_B.setImage(UIImage(named: "pic"), for: .normal)
             Rquestion1_C.setImage(UIImage(named: "pic"), for: .normal)
             Rquestion1_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion1_B:
            Rquestion1_A.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion1_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion1_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion1_C:
            Rquestion1_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion1_A.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion1_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion1_D:
            Rquestion1_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion1_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion1_A.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion2_A:
            Rquestion2_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion2_B:
            Rquestion2_A.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion2_C:
            Rquestion2_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_A.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion2_D:
            Rquestion2_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion2_A.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion3_A:
            Rquestion3_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion3_B:
            Rquestion3_A.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion3_C:
            Rquestion3_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_A.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_D.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
        case Rquestion3_D:
            Rquestion3_B.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_C.setImage(UIImage(named: "pic"), for: .normal)
            Rquestion3_A.setImage(UIImage(named: "pic"), for: .normal)
            if button.imageView?.image == UIImage(named: "pic"){
                button.setImage(UIImage(named: "picHL"), for: .normal)
            }
            else{
                
                //button.setImage(UIImage(named: "pic"), for: .normal)
            }
            
        
        default:
            break
            
            
        }
        
        
    }
    func AddSelectButton(button: UIButton, string: String){
        
        button.setImage(UIImage(named: "pic"), for: .normal)
        button.contentHorizontalAlignment = .left
        button.setTitle(string, for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(button_select), for: .touchUpInside)
    }
    //override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //tableView.deselectRow(at: indexPath, animated: true)
   // }
    @objc private func buttonAction_next(button: UIButton) {
        
        if (Rquestion1_A.imageView?.image == UIImage(named: "pic")
            && Rquestion1_B.imageView?.image == UIImage(named: "pic") && Rquestion1_C.imageView?.image == UIImage(named: "pic") && Rquestion1_D.imageView?.image == UIImage(named: "pic")) || (Rquestion2_A.imageView?.image == UIImage(named: "pic") && Rquestion2_B.imageView?.image == UIImage(named: "pic") && Rquestion2_C.imageView?.image == UIImage(named: "pic") && Rquestion2_D.imageView?.image == UIImage(named: "pic")) || (Rquestion3_A.imageView?.image == UIImage(named: "pic") && Rquestion3_B.imageView?.image == UIImage(named: "pic") && Rquestion3_C.imageView?.image == UIImage(named: "pic") && Rquestion3_D.imageView?.image == UIImage(named: "pic")){
            
            let menu = UIAlertController(title: "", message: "Please fill in all questions", preferredStyle: .alert)
            //let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
            //let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
           // menu.addAction(option1)
            //menu.addAction(option2)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
                self.presentedViewController?.dismiss(animated: false, completion: nil)
            }
            self.present(menu, animated: true, completion: nil)
           
        }
        else{
            
            let vc = SuggestedProgramsTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
          // self.navigationController?.popToRootViewController(animated: true)
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
