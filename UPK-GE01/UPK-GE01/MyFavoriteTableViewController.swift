//
//  TestViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/29.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class MyFavoriteTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableView:UITableView?
    var sectionArray:NSMutableArray?
    var currentSection:NSInteger?
    let Relieve_detial1 = "test1"//"Provides relief for mild to moderate body or muscle pain"
    let Relieve_detial2 = "test2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "My Favorites"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
       // let backBtn = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 30, height: 30))
        //backBtn.setTitle("返回", for: .normal)
       // backBtn.setTitleColor(UIColor.black, for: .normal)
       // backBtn.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        //backBtn.addTarget(self, action: #selector(back), for: .touchUpInside)
        //self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: backBtn)
        
        sectionArray = NSMutableArray.init()
        for i in 1...3 {
            let isOpen = false
            sectionArray?.add(isOpen)
            print(i)
        }
        
        tableView = UITableView.init(frame: self.view.frame, style: .plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.separatorStyle = .none
        tableView?.estimatedSectionFooterHeight = 0
        tableView?.estimatedSectionHeaderHeight = 0
        //tableView?.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "sectionCell")
        self.view.addSubview(tableView!)
        
    }
    
    //@objc func back(){
      //  self.navigationController?.popToRootViewController(animated: true)//self.dismiss(animated: true, completion: nil);
    //}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return (sectionArray?.count)!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 5*HeighPercent
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
    
        return 50
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50*HeighPercent
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: screenWidth, height: 50*HeighPercent))
        headView.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        let btn = UIButton.init(frame: CGRect.init(x: 30*lengthPercent, y: 0, width: screenWidth - 30*lengthPercent, height: 50*HeighPercent))
        btn.setTitle("  ALL", for: .normal)
        btn.contentHorizontalAlignment = .left
        btn.tag = section
        btn.addTarget(self, action: #selector(reloadData(sender:)), for: .touchUpInside)
        headView.addSubview(btn)
        
        let image1 = UIImageView.init(frame: CGRect.init(x:0, y: 10*HeighPercent, width: 30*lengthPercent, height: 30*lengthPercent))
        image1.image = UIImage(named:"min_all")
        headView.addSubview(image1)
        
        let image2 = UIImageView.init(frame: CGRect.init(x:screenWidth - 30*lengthPercent, y: 10*HeighPercent, width: 30*lengthPercent, height: 30*lengthPercent))
        let isOpen = sectionArray![section] as! Bool
        if isOpen {
            
            image2.image = UIImage(named:"ic_massage_category_collapse_white")
        }
        else {
            
            image2.image = UIImage(named:"ic_massage_category_expand_white")
        }
        
        headView.addSubview(image2)
        
        return headView
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let isOpen = sectionArray![indexPath.section] as! Bool
        if isOpen {
            if indexPath.row % 2 == 0{
                return  10*HeighPercent
            }
            return 150*HeighPercent
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        //cell.layer.borderWidth = 0.2
        
       // cell.textLabel?.text = "Stiff Muscle Massage-Advanced"
        //cell.textLabel?.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        let isOpen = sectionArray![indexPath.section] as! Bool
        if isOpen && indexPath.row % 2 == 1 {
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
        }
        else if isOpen && indexPath.row % 2 == 0 {
            
            //cell.backgroundColor = .gray
        }
       // cell.clipsToBounds = true
        //cell.layer.borderWidth = 1
        return cell
    }
    
    
    @objc func reloadData(sender:UIButton){
        let isOpen = sectionArray![sender.tag] as! Bool
        sectionArray?.replaceObject(at: sender.tag, with: !isOpen)
        tableView?.reloadData()
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row % 2 == 1{
            tableView.deselectRow(at: indexPath, animated: true)
            let vc = ProgramDetailsTableViewController()
            vc.program_name = "Stiff Muscle Massage-Advanced"
            //vc.program_section = indexPath.section
            //vc.program_row = indexPath.row
            vc.index = 0
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
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
