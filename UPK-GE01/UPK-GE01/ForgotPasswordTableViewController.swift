//
//  ForgotPasswordTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/9.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit
let label4 = UITextField(frame: CGRect(x: 45*lengthPercent, y: 145*HeighPercent, width: screenWidth - 85*lengthPercent, height: 40*lengthPercent))
let label5 = UITextField(frame: CGRect(x: 45*lengthPercent, y: 190*HeighPercent, width: screenWidth - 85*lengthPercent, height: 40*lengthPercent))

let Button2_R = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 55*HeighPercent, width: screenWidth - 10*lengthPercent, height: 40*lengthPercent))
class ForgotPasswordTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        self.navigationItem.title = "Forgot Password"
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
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
        
        return self.view.frame.height
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let Button1 = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 10*HeighPercent, width: 80*lengthPercent, height: 40*lengthPercent))
        Button1.setImage(UIImage(named: "icon_location (1)"), for: .normal)
        Button1.setTitle("  US", for: .normal)
        Button1.setTitleColor(.black, for: .normal)
        Button1.contentHorizontalAlignment = .left
        Button1.addTarget(self, action: #selector(Button1_action), for: .touchUpInside)
        cell.contentView.addSubview(Button1)
        let lineview1 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 50*HeighPercent, width: 80*lengthPercent, height: 2*lengthPercent))
        lineview1.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview1)
        
        let image1 = UIImageView.init(frame: CGRect(x: 95*lengthPercent, y: 15*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        image1.image = UIImage(named: "lin_user")
        cell.contentView.addSubview(image1)
        let Label1 = UITextField(frame: CGRect(x: 130*lengthPercent, y: 10*HeighPercent, width: screenWidth - 140*lengthPercent, height: 40*lengthPercent))
        Label1.borderStyle = .none
        Label1.placeholder = "Email address or cell phone number"
        Label1.clearButtonMode = .whileEditing
        self.view.addSubview(Label1)
        let lineview2 = UIView.init(frame: CGRect(x: 95*lengthPercent, y: 50*HeighPercent, width: screenWidth - 105*lengthPercent, height: 2*lengthPercent))
        lineview2.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview2)
        //let clearbutton = UIButton.init(frame: CGRect(x: screenWidth - 40*lengthPercent, y: 15*HeighPercent, width: 30*lengthPercent, height: 30*lengthPercent))
       // clearbutton.setImage(UIImage(named: "btn_clear"), for: .normal)
       // cell.contentView.addSubview(clearbutton)
        
        //let Button2 = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 55*HeighPercent, width: screenWidth - 10*lengthPercent, height: 40*lengthPercent))
        Button2_R.addTarget(self, action: #selector(Button2_action), for: .touchUpInside)
        Button2_R.setTitle("Click here to send verification code to your email or cell phone", for: .normal)
        Button2_R.setTitleColor(.white, for: .normal)
        Button2_R.backgroundColor = .orange
        Button2_R.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        Button2_R.titleLabel?.numberOfLines = 0
        Button2_R.titleLabel?.textAlignment = .center
        Button2_R.addTarget(self, action: #selector(Button2_action), for: .touchUpInside)
        cell.contentView.addSubview(Button2_R)
        
                
        let image2 = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 105*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        image2.image = UIImage(named: "user_forgot_vcode")
        cell.contentView.addSubview(image2)
        let label3 = UITextField(frame: CGRect(x: 45*lengthPercent, y: 100*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        label3.borderStyle = .none
        label3.placeholder = "Enter verfication code"
        self.view.addSubview(label3)
        let lineview3 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 140*HeighPercent, width: screenWidth - 20*lengthPercent, height: 2*lengthPercent))
        lineview3.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview3)
        
        let image3 = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 150*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        image3.image = UIImage(named: "user_login_password")
        cell.contentView.addSubview(image3)
       // let label4 = UITextField(frame: CGRect(x: 45, y: 145, width: self.view.frame.width - 85, height: 40))
        label4.borderStyle = .none
        label4.placeholder = "New Password"
        label4.isSecureTextEntry = true
        self.view.addSubview(label4)
        let lineview4 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 185*HeighPercent, width: screenWidth - 20*lengthPercent, height: 2*lengthPercent))
        lineview4.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview4)
        let ButtonSecure = UIButton.init(frame: CGRect(x: screenWidth - 40*lengthPercent, y: 155*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        ButtonSecure.setImage(UIImage(named: "ic_user_eye_dis"), for: .normal)
        ButtonSecure.addTarget(self, action: #selector(ButtonSecure_Action), for: .touchUpInside)
        cell.contentView.addSubview(ButtonSecure)
        
        let image4 = UIImageView.init(frame: CGRect(x: 10*lengthPercent, y: 195*HeighPercent, width: 25*lengthPercent, height: 25*lengthPercent))
        image4.image = UIImage(named: "user_login_password")
        cell.contentView.addSubview(image4)
       // let label5 = UITextField(frame: CGRect(x: 45, y: 190, width: self.view.frame.width - 20, height: 40))
        label5.borderStyle = .none
        label5.placeholder = "Repeat New Password"
        label5.isSecureTextEntry = true
        self.view.addSubview(label5)
        let lineview5 = UIView.init(frame: CGRect(x: 10*lengthPercent, y: 230*HeighPercent, width: screenWidth - 20*lengthPercent, height: 2*lengthPercent))
        lineview5.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineview5)
        
        let button_Reset = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 560*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        button_Reset.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        button_Reset.setTitle("Reset password", for: .normal)
        button_Reset.addTarget(self, action: #selector(ButtonReset_action), for: .touchUpInside)
        cell.contentView.addSubview(button_Reset)
        
        return cell
    }
    @objc func ButtonSecure_Action(button: UIButton){
        
        if label4.isSecureTextEntry == true{
            
            label4.isSecureTextEntry = false
            label5.isSecureTextEntry = false
            button.setImage(UIImage(named: "ic_user_eye_nor"), for: .normal)
        }
        else{
            
            label4.isSecureTextEntry = true
            label5.isSecureTextEntry = true
            button.setImage(UIImage(named: "ic_user_eye_dis"), for: .normal)
        }
    }
    @objc func Button1_action(button: UIButton){
        
        let menu = UIAlertController(title: "", message: "Select Area", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "US", style: .default, handler: nil)
        let option2 = UIAlertAction(title: "CHN", style: .cancel, handler: nil)
        
        menu.addAction(option1)
        menu.addAction(option2)
        
        self.present(menu, animated: true, completion: nil)
    }
    @objc func Button2_action(button: UIButton){
        
        var time = 60
        let codeTimer = DispatchSource.makeTimerSource(flags: .init(rawValue: 0), queue: DispatchQueue.global())
        codeTimer.schedule(deadline: .now(), repeating: .milliseconds(1000))
        codeTimer.setEventHandler {
            
            time = time - 1
            DispatchQueue.main.async {
                
                Button2_R.isEnabled = false //disable button2
            }
            if time < 0 {
                
                codeTimer.cancel()
                DispatchQueue.main.async {
                    Button2_R.isEnabled = true
                    Button2_R.setTitle("Click here to send verification code to your email or cell phone", for: .normal)
                    Button2_R.backgroundColor = .orange
                }
                return
            }
            DispatchQueue.main.async {
                Button2_R.setTitle("Send successfully,send again(\(time))", for: .normal)
                Button2_R.backgroundColor = .gray
            }
            
        }
        codeTimer.activate()
        DispatchQueue.main.async {
            let menu = UIAlertController(title: "", message: "test", preferredStyle: .alert)
            self.present(menu, animated: true, completion: nil)
        }
        //let menu = UIAlertController(title: "", message: "test", preferredStyle: .alert)
        //self.present(menu, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.presentedViewController?.dismiss(animated: false, completion: nil)
        }
    }
    @objc func ButtonReset_action(button: UIButton){
        
        let vc = PLViewController()
        vc.index = 5
        self.navigationController?.pushViewController(vc, animated: true)
       // self.dismiss(animated: true, completion: nil)
        
        //self.navigationController?.popToRootViewController(animated: true)
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
