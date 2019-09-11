//
//  RelieveTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/18.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let Relieve_name = [["General Pain Relief"],["Advanced Pain Relief"],["Joint Pain Relief"],["Short-term Pain Relief - Basic"],["Short-term Pain Relief - Advanced"],["Pain Block"],["Chronic Pain Relief - Mild"],["Chronic Pain Relief - Moderate"],["Chronic Pain Relief - Advanced"],["Pain Relief Massage - Pounding"],["Pain Relief Massage - Combination of rubbing and pounding"],["Back of Neck Pain Relief"],["Back Pain Relief"],["Lower Leg Pain Relief - Basic"],["Lower Leg Pain Relief - Advanced"]]
class RelieveTableViewController: UITableViewController {
    
    
    let Relieve_detial1 = "test1"//"Provides relief for mild to moderate body or muscle pain"
    let Relieve_detial2 = "test2"//Promotes circulation and relaxation of a kneading massage..."
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
        
        return 15
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 5*HeighPercent
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 5*HeighPercent
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return  150*HeighPercent
    }
  
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        
        
        let label_name = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 6*HeighPercent, width: screenWidth - 60*lengthPercent, height: 40*lengthPercent))
        label_name.text = Relieve_name[indexPath.section][indexPath.row]
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
        
        let lable_myrating = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 0, width: 80*lengthPercent, height: 30*lengthPercent))
        lable_myrating.text = "My rating"
       // cell.contentView.addSubview(lable_myrating)
        backView.addSubview(lable_myrating)
        
        let starView = RatingBar.init(frame: CGRect.init(x: 90*lengthPercent, y: 7*HeighPercent, width: 100*lengthPercent, height: 15*lengthPercent), starCount: 5, currentStar: 4.5, rateStyle: .half,tap: false) { (current) -> (Void) in
            print(current)
        }
        backView.addSubview(starView)
        
        let button_favofite = UIButton.init(frame: CGRect(x: screenWidth - 50*lengthPercent, y: 20*HeighPercent, width: 30*lengthPercent, height: 24*lengthPercent))
       // button.backgroundColor = UIColor.lightGray
        button_favofite.setImage(UIImage(named: "lin_like_grey"), for: .normal)
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
        //vc.program_section = indexPath.section
        //vc.program_row = indexPath.row
        vc.program_name = Relieve_name[indexPath.section][indexPath.row]
        vc.index = 0
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}
