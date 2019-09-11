//
//  ControlPannelViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/16.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ControlPannelViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        self.navigationItem.title = "RelieforMe"
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white
            , NSAttributedString.Key.font:UIFont.systemFont(ofSize: 25*lengthPercent)]
        //Add_label()
        //Add_button_test()
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
         HelpButton()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        let menu = UIAlertController(title: "", message: "test", preferredStyle: .alert)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.presentedViewController?.dismiss(animated: false, completion: nil)
        }
        self.present(menu, animated: true, completion: nil)
        if ((self.navigationController?.viewControllers.count)!) > 1{
            
            self.tabBarController?.tabBar.isHidden = true
        }
        else{
            
            self.tabBarController?.tabBar.isHidden = false
        }
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
    func Add_label(){
        
        let label1 = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 470*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label1.text = "Intensity info is in Program Details"
        label1.font = label1.font.withSize(14*lengthPercent)
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
        let label2 = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 495*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label2.text = "Intensity setting in last use: 6"
        label2.font = label2.font.withSize(14*lengthPercent)
        label2.textAlignment = .center
        self.view.addSubview(label2)
        
    }
    func Add_button_test(){
        
        let button_test = UIButton.init(frame: CGRect(x: 60*lengthPercent, y: 550*HeighPercent, width: 255*lengthPercent, height: 40*lengthPercent))
        //button_test.backgroundColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        button_test.addTarget(self, action: #selector(buttonAction_Pairing), for: .touchUpInside)
        self.view.addSubview(button_test)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 0//300*HeighPercent
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return  0///10*HeighPercent
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return screenHeight//100*HeighPercent
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
  
        let lineview1 = UIView.init(frame: CGRect(x: 58*lengthPercent, y: 375*HeighPercent, width: screenWidth - 116*lengthPercent, height: 0.5*lengthPercent))
        lineview1.backgroundColor = .gray
        cell.contentView.addSubview(lineview1)
        let lineview2 = UIView.init(frame: CGRect(x: 58*lengthPercent, y: 465*HeighPercent, width: screenWidth - 116*lengthPercent, height: 0.5*lengthPercent))
        lineview2.backgroundColor = .gray
        cell.contentView.addSubview(lineview2)
        let lineview3 = UIView.init(frame: CGRect(x: 58*lengthPercent, y: 375*HeighPercent, width: 0.5*lengthPercent, height: 90*HeighPercent))
        lineview3.backgroundColor = .gray
        cell.contentView.addSubview(lineview3)
        let lineview4 = UIView.init(frame: CGRect(x: 317*lengthPercent, y: 375*HeighPercent, width: 0.5*lengthPercent, height: 90*HeighPercent))
        lineview4.backgroundColor = .gray
        cell.contentView.addSubview(lineview4)
        
        let label_current = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 380*HeighPercent, width: screenWidth - 120*lengthPercent, height: 20*lengthPercent))
        label_current.text = "CURRENT PROGRAM"
        label_current.textAlignment = .center
        //label_current.textColor = UIColor(red: 9/255.0, green: 187/255.0, blue: 7/255.0, alpha: 1)
        cell.contentView.addSubview(label_current)
        
        let button_favofite = UIButton.init(frame: CGRect(x: 285*lengthPercent, y: 380*HeighPercent, width: 30*lengthPercent, height: 24*lengthPercent))
        // button.backgroundColor = UIColor.lightGray
        button_favofite.setImage(UIImage(named: "lin_like_full_grey"), for: .normal)
        //button_favofite.setTitle("test", for: .highlighted)
        button_favofite.addTarget(self, action: #selector(buttonAction_favorite), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_favofite)
        
        let button_name = UIButton.init(frame: CGRect(x: 70*lengthPercent, y: 410*HeighPercent, width: screenWidth - 140*lengthPercent, height: 50*lengthPercent))
        button_name.setTitle("Wrist Stiff Muscle Massage-Advanced", for: .normal)
        button_name.setTitleColor(.gray, for: .normal)
        //button_name.backgroundColor = .green
        button_name.titleLabel?.textAlignment = .center
        button_name.titleLabel?.numberOfLines = 0
        button_name.addTarget(self, action: #selector(ButtonName_Action), for: .touchUpInside)
        cell.contentView.addSubview(button_name)
        
        let label1 = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 470*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label1.text = "Intensity info is in Program Details"
        label1.font = label1.font.withSize(14*lengthPercent)
        label1.textAlignment = .center
         cell.contentView.addSubview(label1)
        
        let label2 = UILabel.init(frame: CGRect(x: 60*lengthPercent, y: 495*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label2.text = "Intensity setting in last use: 6"
        label2.font = label2.font.withSize(14*lengthPercent)
        label2.textAlignment = .center
         cell.contentView.addSubview(label2)
        //tableView.indexPathForSelectedRow!.section
        return cell
    }
    @objc private func buttonAction_favorite(button: UIButton) {
        
        // print("do nothing")
        if button.imageView?.image == UIImage(named: "lin_like_full_grey"){
            button.setImage(UIImage(named: "lin_like_red"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "lin_like_full_grey"), for: .normal)
        }
        
    }
    @objc private func ButtonName_Action(button: UIButton) {
        
        let vc = ProgramDetailsTableViewController()
        vc.index = 1
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0{
            
            let vc = PairingTableViewController()
            vc.index = 1
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @objc private func buttonAction_Pairing(button: UIButton) {
        
        print("test---------")
        let vc = PairingTableViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
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
