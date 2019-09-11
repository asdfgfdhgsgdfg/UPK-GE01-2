//
//  SelectAreaTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/29.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class SelectAreaTableViewController: UITableViewController {
    
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        //let testview = UIStoryboard(name: "TestStoryBoard", bundle: nil).instantiateViewController(withIdentifier: "SelectBodyView")
       
       // addChild(testview)
        //screenWidth = self.view.frame.width
        //screenHeight = self.view.frame.height
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        if index == 1{
            self.navigationItem.title = "Select Your pain Point"
        }
       else{
            self.navigationItem.title = "Select Treatment Area"
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return screenHeight
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)     
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let selectView = SelectBodyView.init(frame: CGRect(x: 0, y: 40, width: screenWidth, height: 550))
        selectView.backgroundColor = .white
        cell.contentView.addSubview(selectView)
        
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
        
        if index == 0{
            let vc = WarningsTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if index == 1{
            let vc = RelieveQuestionTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if index == 2{
            let vc = StrengthQuestionTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else if index == 3{
            let vc = RelaxQuestionTableViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}
