//
//  MyDeviceTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/7/31.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class MyDeviceTableViewController: UITableViewController {
    var BTAddress = ["19:06:00:00:00:73", "19:06:00:00:00:73", "19:06:00:00:00:73"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "My device"
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
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        let button1 = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: 5*HeighPercent, width: 240*lengthPercent, height: 40*lengthPercent))
        button1.setTitle(BTAddress[indexPath.row], for: .normal)
        button1.setTitleColor(UIColor.black, for: .normal)
        button1.contentHorizontalAlignment = .left
        button1.addTarget(self, action: #selector(button1_action), for: .touchUpInside)
        cell.contentView.addSubview(button1)
        
        let lineview1 = UIView.init(frame: CGRect(x: 250*lengthPercent, y: 5*HeighPercent, width: 1*lengthPercent, height: 35*lengthPercent))
        lineview1.backgroundColor = UIColor.gray
        cell.contentView.addSubview(lineview1)
        
        let button2 = UIButton.init(frame: CGRect(x: 250*lengthPercent, y: 5*HeighPercent, width: 90*lengthPercent, height: 40*lengthPercent))
        button2.setTitle("unpaired", for: .normal)
        button2.setTitleColor(UIColor.black, for: .normal)
        button2.contentHorizontalAlignment = .center
        button2.addTarget(self, action: #selector(button2_action), for: .touchUpInside)
        cell.contentView.addSubview(button2)
        
        let lineview2 = UIView.init(frame: CGRect(x: 340*lengthPercent, y: 5*HeighPercent, width: 1*lengthPercent, height: 35*lengthPercent))
        lineview2.backgroundColor = UIColor.gray
        cell.contentView.addSubview(lineview2)
        
        let button3 = UIButton.init(frame: CGRect(x: 340*lengthPercent, y: 5*HeighPercent, width: 35*lengthPercent, height: 40*lengthPercent))
        //button3.tag = indexPath.row
        button3.setImage(UIImage(named: "lin_delete"), for: .normal)
        button3.addTarget(self, action: #selector(button3_action), for: .touchUpInside)
        cell.contentView.addSubview(button3)
        
        return cell
    }
    
    @objc func button1_action(button: UIButton){
       
        var DeviceNameTextField: UITextField?
        
        let alertController = UIAlertController(
            title: "ReName",
            message: "",
            preferredStyle: UIAlertController.Style.alert)
        
        let CancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        let OKAction = UIAlertAction(
        title: "OK", style: .default) {
            (action) -> Void in
            
            if let DeviceName = DeviceNameTextField?.text {
                print(" DeviceName = \(DeviceName)")
                button.setTitle(DeviceName, for: .normal)
            } else {
                print("No DeviceName entered")
            }
           
        }
       
        alertController.addTextField {
            (txtDeviceName) -> Void in
            DeviceNameTextField = txtDeviceName
        }
        
        alertController.addAction(CancelAction)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
    @objc func button2_action(button: UIButton){
        
        let menu = UIAlertController(title: "Message", message: "Do you want to connect to this device?", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        let option2 = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        menu.addAction(option1)
        menu.addAction(option2)
        
        self.present(menu, animated: true, completion: nil)
    }
    
    @objc func button3_action(button: UIButton){
        
        let menu = UIAlertController(title: "Message", message: "Are you sure you want to delete this device?", preferredStyle: .alert)
        let option1 = UIAlertAction(title: "CANCEL", style: .cancel, handler: nil)
        let option2 = UIAlertAction(title: "OK", style: .default){(alertAction)->Void in
           
            
        }
        
        menu.addAction(option1)
        menu.addAction(option2)
        
        self.present(menu, animated: true, completion: nil)
       // button.delete(button)
        //button.removeFromSuperview()
        //self.BTAddress.remove(at: button.tag)
        //self.tableView.reloadData()
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
