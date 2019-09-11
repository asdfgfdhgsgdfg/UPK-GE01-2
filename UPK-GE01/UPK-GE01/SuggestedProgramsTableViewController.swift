//
//  SuggestedProgramsTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/30.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class SuggestedProgramsTableViewController: UITableViewController {
    
    let Relieve_detial1 = "test1"//"Provides relief for mild to moderate body or muscle pain"
    let Relieve_detial2 = "test2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        self.navigationItem.title = "Suggested Programs"
        self.tableView.sectionFooterHeight = 0
        self.tableView.sectionHeaderHeight = 0
        Suggest_finish()
        //AddHeaderLabel()
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func AddHeaderLabel(){
        
        let HeaderLabel = UILabel.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 50))
        HeaderLabel.text = "Based on your profile, these programs might be right for RELIEF of your Upper arm"
        HeaderLabel.numberOfLines = 0
        self.view.addSubview(HeaderLabel)
    }
    func Suggest_finish(){
        let FinishBtn = UIButton.init(frame: CGRect.init(x: screenWidth - 20, y: 0, width: 20, height: 30))
        FinishBtn.setImage(UIImage(named: "lin_tohome (1)"), for: .normal)
        FinishBtn.addTarget(self, action: #selector(buttonAction_finish), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: FinishBtn)
       
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
    @objc private func buttonAction_finish(button: UIButton) {
        
         self.navigationController?.popToRootViewController(animated: true)
        // self.tabBarController?.selectedIndex = 1
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    
        return 5
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if section == 0{
            
            return 50
        }
        return 5
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 150
    }
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: screenWidth, height: 50*HeighPercent))
        if section == 0{
            let HeaderLabel = UILabel.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 50*HeighPercent))
            HeaderLabel.text = "Based on your profile, these programs might be right for RELIEF of your Upper arm"
            HeaderLabel.numberOfLines = 0
            HeaderLabel.backgroundColor = .white
            headView.addSubview(HeaderLabel)
        }
        
        return headView
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        cell.layer.borderWidth = 0.5
        
        
        let label_name = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 6*HeighPercent, width: screenWidth - 60*lengthPercent, height: 40*lengthPercent))
        label_name.text = "Stiff Muscle Massage-Advanced"
        label_name.numberOfLines = 0
        label_name.font = label_name.font.withSize(15*lengthPercent)
        label_name.font = UIFont.boldSystemFont(ofSize: 15*lengthPercent)
        label_name.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_name)
        
        let label_detial1 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 46*HeighPercent, width: screenWidth - 60*lengthPercent, height: 40*lengthPercent))
        label_detial1.text = Relieve_detial1
        label_detial1.numberOfLines = 2
        cell.contentView.addSubview(label_detial1)
        
        let label_detial2 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 66*HeighPercent, width: screenWidth - 60*lengthPercent, height: 40*lengthPercent))
        label_detial2.text = Relieve_detial2
        label_detial2.numberOfLines = 2
        cell.contentView.addSubview(label_detial2)
        
        let lable_duration = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 100*HeighPercent, width: screenWidth - 60*lengthPercent, height: 20*lengthPercent))
        lable_duration.text = "Duration: 20 min"
        cell.contentView.addSubview(lable_duration)
        
        let backView = UIView.init(frame: CGRect.init(x: 0, y: 120*HeighPercent, width: screenWidth - 50*lengthPercent, height: 30*lengthPercent))
        backView.backgroundColor = UIColor.white
        cell.contentView.addSubview(backView)
        
        let lable_myrating = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 0*HeighPercent, width: 80*lengthPercent, height: 30*lengthPercent))
        lable_myrating.text = "My rating"
        // cell.contentView.addSubview(lable_myrating)
        backView.addSubview(lable_myrating)
        
        let starView = RatingBar.init(frame: CGRect.init(x: 90*lengthPercent, y: 7*HeighPercent, width: 100*lengthPercent, height: 15*lengthPercent), starCount: 5, currentStar: 4.5, rateStyle: .half,tap: false) { (current) -> (Void) in
            print(current)
        }
        backView.addSubview(starView)
        
        let button_favofite = UIButton.init(frame: CGRect(x: screenWidth - 50*lengthPercent, y: 20*HeighPercent, width: 30*lengthPercent, height: 24*lengthPercent))
        // button.backgroundColor = UIColor.lightGray
        button_favofite.setImage(UIImage(named: "lin_like_red"), for: .normal)
        //button_favofite.setTitle("test", for: .highlighted)
        button_favofite.addTarget(self, action: #selector(buttonAction_favorite), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_favofite)
        
        let button_start = UIButton.init(frame: CGRect(x: screenWidth - 50*lengthPercent, y: 100*HeighPercent, width: 30*lengthPercent, height: 24*lengthPercent))
        // button.backgroundColor = UIColor.lightGray
        button_start.setImage(UIImage(named: "lin_start"), for: .normal)
        //  button_start.setTitle("test", for: .highlighted)
        button_start.addTarget(self, action: #selector(buttonAction_start), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_start)

        return cell
    }
    @objc private func buttonAction_favorite(button: UIButton) {
        
        // print("do nothing")
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
        vc.program_name = "Stiff Muscle Massage-Advanced"
        //vc.program_section = indexPath.section
        //vc.program_row = indexPath.row
        vc.index = 0
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
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
