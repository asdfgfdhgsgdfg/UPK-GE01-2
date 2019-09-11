//
//  ProgramLibraryViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/15.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
var fromWarningView = false

class ProgramLibraryViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var therapy = [["Relieve"], ["Strengthen"], ["Relax"]]
    var therapy_decribe = ["Programs designed to help relieve your muscle and joint pain and stiffness", "Programs designed to help strenghten and restore your muscles and promote movement", "Programs designed to massage and relax your muscles"]
    
    var session_image = ["icon_main_relieve", "icon_main_strenthe", "icon_main_relax"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenWidth = self.view.frame.width
        screenHeight = self.view.frame.height
        // title = "Program Library"
        self.navigationItem.title = "RelieforMe"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white
            , NSAttributedString.Key.font:UIFont.systemFont(ofSize: 25*lengthPercent)]
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
         HelpButton()
        // Do any additional setup after loading the view.
    }
    func HelpButton(){
        let HelpBtn = UIButton.init(frame: CGRect.init(x: screenWidth - 20, y: 0, width: 20, height: 30))
        HelpBtn.setImage(UIImage(named: "lin_help (1)"), for: .normal)
        HelpBtn.addTarget(self, action: #selector(buttonAction_Help), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: HelpBtn)
        
    }
    @objc func buttonAction_Help(button: UIButton){
        let vc = HelpCenterTableViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        
        if fromWarningView == true{
            print("22222")
            fromWarningView = false
            self.tabBarController?.selectedIndex = 1
        }
        
        //self.navigationController?.popToRootViewController(animated: true)
        if ((self.navigationController?.viewControllers.count)!) > 1{
            
            self.tabBarController?.tabBar.isHidden = true
        }
        else{
            
            self.tabBarController?.tabBar.isHidden = false
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 10*HeighPercent
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  10*HeighPercent
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90*HeighPercent
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_programlibrary", for: indexPath) as! ProgramLibraryUITableViewCell
        
        let NameLabel = UILabel.init(frame: CGRect(x: 95*lengthPercent, y: 15*HeighPercent, width: 200*lengthPercent, height: 17*lengthPercent))
        NameLabel.text = therapy[indexPath.section][indexPath.row]
        NameLabel.numberOfLines = 0
        NameLabel.font = NameLabel.font.withSize(17*lengthPercent)
        cell.contentView.addSubview(NameLabel)
        //cell.SessionName.text = therapy[indexPath.section][indexPath.row]
        //cell.SessionName.font = cell.SessionName.font.withSize(17*lengthPercent)
        cell.SessionImage.image = UIImage(named:session_image[indexPath.section])
        //cell.SessionImage.layer.cornerRadius = cell.SessionImage.frame.size.height/2
        //cell.SessionImage.clipsToBounds = true
        //cell.SessionDetial.text = therapy_decribe[indexPath.section]
        let DetialLabel = UILabel.init(frame: CGRect(x: 95*lengthPercent, y: 33*HeighPercent, width: 270*lengthPercent, height: 50*lengthPercent))
        DetialLabel.text = therapy_decribe[indexPath.section]
        DetialLabel.numberOfLines = 0
        DetialLabel.font = NameLabel.font.withSize(13*lengthPercent)
        cell.contentView.addSubview(DetialLabel)
        //cell.SessionDetial.font = cell.SessionDetial.font.withSize(12*lengthPercent)
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 && indexPath.row == 0 {
            
            let vc = PLViewController()
            vc.index = 0
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.section == 1 && indexPath.row == 0 {
            
            let vc = PLViewController()
            vc.index = 1
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if indexPath.section == 2 && indexPath.row == 0 {
            
            let vc = PLViewController()
            vc.index = 2
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    //  override func addChild(_ childController: UIViewController) {
    
    //}
}
