//
//  PairingTableViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/8/2.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class PairingTableViewController: UITableViewController {
    
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Pairing"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        //let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
       // self.navigationItem.backBarButtonItem = item
        Add_label()
        Add_button()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func Add_label(){
        
        let label1 = UILabel.init(frame: CGRect(x: 10*lengthPercent, y: 10*HeighPercent, width: 255*lengthPercent, height: 20*lengthPercent))
        label1.text = "test"
        label1.font = label1.font.withSize(14*lengthPercent)
        label1.textAlignment = .center
        self.view.addSubview(label1)
        
    }
    func Add_button(){
        
        let button1 = UIButton.init(frame: CGRect(x: 20*lengthPercent, y: 560*HeighPercent, width: 160*lengthPercent, height: 40*lengthPercent))
        button1.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        button1.setTitle("(RE)START", for: .normal)
        button1.addTarget(self, action: #selector(buttonAction_Start), for: .touchUpInside)
        self.view.addSubview(button1)
        
        let button2 = UIButton.init(frame: CGRect(x: 195*lengthPercent, y: 560*HeighPercent, width: 160*lengthPercent, height: 40*lengthPercent))
        button2.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        button2.setTitle("SKIP", for: .normal)
        button2.addTarget(self, action: #selector(buttonAction_Skip), for: .touchUpInside)
        self.view.addSubview(button2)
        
    }
    
    @objc private func buttonAction_Start(button: UIButton) {
        
        let menu = UIAlertController(title: "", message: "test", preferredStyle: .alert)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){
            self.presentedViewController?.dismiss(animated: false, completion: nil)
        }
        self.present(menu, animated: true, completion: nil)
        
    }
    @objc private func buttonAction_Skip(button: UIButton) {
        
        //self.tabBarController?.selectedIndex = 1
        //self.navigationController?.popToRootViewController(animated: true)
        //self.navigationController = TestViewController()
        //self.navigationController?.delegate = TestViewController() as! UINavigationControllerDelegate
      //  let vc = ControlPannelViewController()//TabBarViewController()
        //vc.index = 1
        
       // self.present(vc, animated: true, completion: nil)
        //self.navigationController?.present(vc, animated: true, completion: nil)
        //self.navigationController?.pushViewController(vc, animated: true)
        if index == 1{
            self.navigationController?.popToRootViewController(animated: true)
            index = 0            
        }
        else{
            let deststoryboard = UIStoryboard(name: "Content", bundle: nil)
            let destvc = deststoryboard.instantiateViewController(withIdentifier: "MainInterface")
            self.present(destvc, animated: true, completion: nil)
        }
      
        
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
