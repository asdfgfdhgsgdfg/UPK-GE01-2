//
//  ContactUsTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class ContactUsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Contact us"
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
        
        let label1 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 10*HeighPercent, width: self.view.frame.width - 100*lengthPercent,height: 40*lengthPercent))
        label1.text = "Texhnical issue"
        label1.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label1)
        let button1 = UIButton.init(frame: CGRect(x: screenWidth - 40*lengthPercent, y: 20*HeighPercent, width: 20*lengthPercent, height: 20*lengthPercent))
        button1.setImage(UIImage(named: "btn_unselected"), for: .normal)
        button1.addTarget(self, action: #selector(button1_action), for: .touchUpInside)
        cell.contentView.addSubview(button1)
        
        let label2 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 55*HeighPercent, width: self.view.frame.width - 100*lengthPercent,height: 40*lengthPercent))
        label2.text = "Other issue"
        label2.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        cell.contentView.addSubview(label2)
        let button2 = UIButton.init(frame: CGRect(x: screenWidth - 40*lengthPercent, y: 70*HeighPercent, width: 20*lengthPercent, height: 20*lengthPercent))
        button2.setImage(UIImage(named: "btn_unselected"), for: .normal)
        button2.addTarget(self, action: #selector(button2_action), for: .touchUpInside)
        cell.contentView.addSubview(button2)
        
        let label3 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 110*HeighPercent, width: screenWidth ,height: 30*lengthPercent))
        label3.text = "Please write your comments"
        cell.contentView.addSubview(label3)
        
        let Label_comments = UITextField(frame: CGRect(x: 10*lengthPercent, y: 150*HeighPercent, width: screenWidth - 20*lengthPercent, height: 80*lengthPercent))
        Label_comments.borderStyle = .none
        self.view.addSubview(Label_comments)
        let lineview = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 230*HeighPercent, width: screenWidth - 20*lengthPercent, height: 2*lengthPercent))
        lineview.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview)
        
        let label4 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 240*lengthPercent, width: screenWidth ,height: 30*lengthPercent))
        label4.text = "Please add picture or screen shot"
        cell.contentView.addSubview(label4)
        
        let Camera_button = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 275*HeighPercent, width: 80*lengthPercent, height: 70*lengthPercent))
        Camera_button.setImage(UIImage(named: "lin_camemer"), for: .normal)
        Camera_button.addTarget(self, action: #selector(CameraButton_action), for: .touchUpInside)
        cell.contentView.addSubview(Camera_button)
        
        let label5 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 530*HeighPercent, width: screenWidth ,height: 20*lengthPercent))
        label5.text = "email:service@umeheal.com"
        label5.font = label5.font.withSize(14)
        cell.contentView.addSubview(label5)
        
        
        let button_OK = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 560*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        button_OK.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        // button_next.setImage(UIImage(named: "pic"), for: .normal)
        button_OK.setTitle("OK", for: .normal)
        button_OK.addTarget(self, action: #selector(buttonAction_OK), for: .touchUpInside)
        //button.setImage("pic", for: UIControl.State)
        cell.contentView.addSubview(button_OK)
        
        return cell
    }
    @objc private func buttonAction_OK(button: UIButton) {
        
       self.navigationController?.popToRootViewController(animated: true)
        
    }
    @objc private func button1_action(button: UIButton) {
        
        print("do nothing")
        if button.imageView?.image == UIImage(named: "btn_unselected"){
            button.setImage(UIImage(named: "btn_selected"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "btn_unselected"), for: .normal)
        }
        
    }
    @objc private func button2_action(button: UIButton) {
        
        print("do nothing")
        if button.imageView?.image == UIImage(named: "btn_unselected"){
            button.setImage(UIImage(named: "btn_selected"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "btn_unselected"), for: .normal)
        }
        
    }
    @objc  func CameraButton_action(button: UIButton){
        
        if !UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            
           // return
        }
       
        let imagePickerVC = UIImagePickerController()
       
        self.present(imagePickerVC, animated: true, completion: nil)
        
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
