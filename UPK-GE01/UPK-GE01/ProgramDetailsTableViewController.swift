//
//  ProgramDetailsTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/29.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ProgramDetailsTableViewController: UITableViewController {

    var program_section = 0
    var program_row = 0
    var index = 0
    var program_name: String = ""
    var program_description = ["program_description","program_description1","program_description2","program_description3","program_description4","program_description5","program_description6","program_description7","program_description8","program_description9","program_description10","program_description11","program_description12","program_description13","program_description14","program_description15","program_description16","program_description17","program_description18","program_description19","program_description20","program_description21","program_description22","program_description23","program_description24","program_description25","program_description26","program_description27","program_description28","program_description29"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Program Details"
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
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        var height:CGFloat = 0
        if index == 1 {
            let ProgramImage = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 375*lengthPercent, height: 150*lengthPercent))
            ProgramImage.image = UIImage(named: "detail_img")
            cell.contentView.addSubview(ProgramImage)
            height = 155*HeighPercent
        }
        
        let label_name = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 6*HeighPercent + height, width: 325*lengthPercent, height: 40*lengthPercent))
        if program_section < 15{
            label_name.text = program_name//Relieve_name[program_section][program_row]
        }
        else if program_section < 23{
            label_name.text = program_name//Strengthen_name[program_section - 15][program_row]
        }
        else{
            label_name.text = program_name//Relax_name[program_section - 23][program_row]
        }
        label_name.numberOfLines = 0
        label_name.font = UIFont.boldSystemFont(ofSize: 15)
        label_name.font = UIFont.boldSystemFont(ofSize: 15*lengthPercent)
        label_name.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_name)
       
        
        let lable_duration = UILabel.init(frame: CGRect(x: 15*lengthPercent, y: 46*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        lable_duration.text = "Duration: 20 min"
        cell.contentView.addSubview(lable_duration)
        
        let backView = UIView.init(frame: CGRect.init(x: 0, y: 66*HeighPercent + height, width: screenWidth - 50, height: 30))
        backView.backgroundColor = UIColor.white
        cell.contentView.addSubview(backView)
        
        let lable_myrating = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 0*HeighPercent, width: 80, height: 30*lengthPercent))
        lable_myrating.text = "My rating"
        // cell.contentView.addSubview(lable_myrating)
        backView.addSubview(lable_myrating)
        
        let starView = RatingBar.init(frame: CGRect.init(x: 90*lengthPercent, y: 7*HeighPercent, width: 100, height: 15), starCount: 5, currentStar: 4.5, rateStyle: .half,tap: false) { (current) -> (Void) in
            print(current)
        }
        backView.addSubview(starView)
        
        let button_favofite = UIButton.init(frame: CGRect(x: screenWidth - 50*lengthPercent, y: 20*HeighPercent + height, width: 30*lengthPercent, height: 24*lengthPercent))
        // button.backgroundColor = UIColor.lightGray
        button_favofite.setImage(UIImage(named: "lin_like_grey"), for: .normal)
        //button_favofite.setTitle("test", for: .highlighted)
        button_favofite.addTarget(self, action: #selector(buttonAction_favorite), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_favofite)
        
        let label_Decription = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 106*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        label_Decription.text = "Description"
        label_Decription.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_Decription)
        
        
        let lable_detail1 = UILabel.init(frame: CGRect(x: 15*lengthPercent, y: 126*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        lable_detail1.text = "detail1"
        cell.contentView.addSubview(lable_detail1)
        
        let label_Intensity = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 166*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        label_Intensity.text = "Intensity"
        label_Intensity.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_Intensity)
        
        
        let lable_detail2 = UILabel.init(frame: CGRect(x: 15*lengthPercent, y: 186*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        lable_detail2.text = "detail2"
        cell.contentView.addSubview(lable_detail2)
        
        let label_Use = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 226*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        label_Use.text = "Use"
        label_Use.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_Use)
        
        
        let lable_detail3 = UILabel.init(frame: CGRect(x: 15*lengthPercent, y: 246*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        lable_detail3.text = "detail3"
        cell.contentView.addSubview(lable_detail3)
        
        let label_Caution = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 286*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        label_Caution.text = "Caution"
        label_Caution.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label_Caution)
        
        
        let lable_detail4 = UILabel.init(frame: CGRect(x: 15*lengthPercent, y: 306*HeighPercent + height, width: 300*lengthPercent, height: 20*lengthPercent))
        lable_detail4.text = "detail4"
        cell.contentView.addSubview(lable_detail4)
        
        if index == 0{
            let button_start = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 560*HeighPercent + height, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
            button_start.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
            button_start.setImage(UIImage(named: "lin_start_white (1)"), for: .normal)
            //button_next.setTitle("Next", for: .normal)
            button_start.addTarget(self, action: #selector(buttonAction_start), for: .touchUpInside)
            //button.setImage("pic", for: UIControl.State)
            cell.contentView.addSubview(button_start)
        }
        
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
