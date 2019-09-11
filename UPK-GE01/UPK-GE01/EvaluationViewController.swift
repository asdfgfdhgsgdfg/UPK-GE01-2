//
//  EvaluationViewController.swift
//  UPK-GE01
//
//  Created by zhongzhong.cao on 2019/9/10.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import UIKit

class EvaluationViewController: UIViewController {
    
    public var callBack:((Float) -> ())?
    private var count: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        title = "Evaluation"
        self.tabBarController?.hidesBottomBarWhenPushed = true
        self.tabBarController?.tabBar.isHidden = true
        let item = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        self.navigationItem.backBarButtonItem = item
        
        AddContent()
       
        // Do any additional setup after loading the view.
    }
    
    func AddContent() {
        
        let RatingLabel = UILabel.init(frame: CGRect.init(x: 10*lengthPercent, y: NavH + 10*HeighPercent, width: 235*lengthPercent, height: 30*lengthPercent))
        RatingLabel.text = "My Rating"
        RatingLabel.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(RatingLabel)
        
        let starview = RatingBar.init(frame: CGRect.init(x: 0, y: NavH + 40*HeighPercent, width: 235*lengthPercent, height: 30*lengthPercent), starCount: 5, currentStar: 5, rateStyle: .half,tap: true) { (current) -> (Void) in
            print(current)
        }
        self.view.addSubview(starview)
        
        let IntervalView1 = UIView.init(frame: CGRect.init(x: 0, y: NavH + 80*HeighPercent, width: screenWidth, height: 5*lengthPercent))
        IntervalView1.backgroundColor = .lightGray
        self.view.addSubview(IntervalView1)
        
        let FavoriteLabel = UILabel.init(frame: CGRect.init(x: 10*lengthPercent, y: NavH + 85*HeighPercent, width: screenWidth - 60*lengthPercent, height: 50*lengthPercent))
        FavoriteLabel.text = "Add to My Favorites"
        FavoriteLabel.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(FavoriteLabel)
        
        let FavoriteButton = UIButton.init(frame: CGRect.init(x: screenWidth - 40*lengthPercent, y: NavH + 97*HeighPercent, width: 30*lengthPercent, height: 24*lengthPercent))
        FavoriteButton.setImage(UIImage(named: "lin_like_grey"), for: .normal)
        FavoriteButton.addTarget(self, action: #selector(FavoriteButton_Action), for: .touchUpInside)
        self.view.addSubview(FavoriteButton)
        
        let IntervalView2 = UIView.init(frame: CGRect.init(x: 0, y: NavH + 140*HeighPercent, width: screenWidth, height: 5*lengthPercent))
        IntervalView2.backgroundColor = .lightGray
        self.view.addSubview(IntervalView2)
        
        let NotesLabel = UILabel.init(frame: CGRect.init(x: 10*lengthPercent, y: NavH + 145*HeighPercent, width: 200*lengthPercent, height: 30*lengthPercent))
        NotesLabel.text = "My Notes"
        NotesLabel.textColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(NotesLabel)
        
        let InputLabel = UITextField.init(frame: CGRect.init(x: 10*lengthPercent, y: NavH + 180*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        self.view.addSubview(InputLabel)
        
        let lineView = UIView.init(frame: CGRect.init(x: 10*lengthPercent, y: NavH + 220*HeighPercent, width: screenWidth - 20*lengthPercent, height: 1))
        lineView.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        self.view.addSubview(lineView)
        
        let IntervalView3 = UIView.init(frame: CGRect.init(x: 0, y: NavH + 225*HeighPercent, width: screenWidth, height: 5*lengthPercent))
        IntervalView3.backgroundColor = .lightGray
        self.view.addSubview(IntervalView3)
        
        let CommentButton = UIButton.init(frame: CGRect.init(x: 10*lengthPercent, y: NavH + 235*HeighPercent, width: 250*lengthPercent, height: 60*lengthPercent))
        CommentButton.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        CommentButton.setTitle("Click here to send comments to RelieforMe", for: .normal)
        CommentButton.titleLabel?.numberOfLines = 2
        CommentButton.titleLabel?.textAlignment = .center
        CommentButton.addTarget(self, action: #selector(CommentButton_Action), for: .touchUpInside)
        self.view.addSubview(CommentButton)
        
        let ShareButton = UIButton.init(frame: CGRect.init(x: 260*lengthPercent, y: NavH + 235*HeighPercent, width: 105*lengthPercent, height: 60*lengthPercent))
        ShareButton.backgroundColor = .gray
        ShareButton.setTitle("Share", for: .normal)
        ShareButton.addTarget(self, action: #selector(ShareButton_Action), for: .touchUpInside)
        self.view.addSubview(ShareButton)
        
        
        let SaveButton = UIButton.init(frame: CGRect(x: 10*lengthPercent, y: NavH + 560*HeighPercent, width: screenWidth - 20*lengthPercent, height: 40*lengthPercent))
        SaveButton.backgroundColor = UIColor(red: 0/255.0, green: 204/255.0, blue: 204/255.0, alpha: 1)
        SaveButton.setTitle("SAVE TO MY TREAMENT DIARY", for: .normal)
        SaveButton.addTarget(self, action: #selector(SaveButton_Action), for: .touchUpInside)
        self.view.addSubview(SaveButton)
        
        
    }
    @objc private func FavoriteButton_Action(button: UIButton) {
        
        // print("do nothing")
        if button.imageView?.image == UIImage(named: "lin_like_grey"){
            button.setImage(UIImage(named: "lin_like_red"), for: .normal)
        }
        else{
            
            button.setImage(UIImage(named: "lin_like_grey"), for: .normal)
        }
        
    }
    @objc private func CommentButton_Action(button: UIButton) {
        
      let vc = ContactUsTableViewController()
      self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @objc private func ShareButton_Action(button: UIButton) {
        
        //share to facebook
        
    }
    @objc private func SaveButton_Action(button: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
        //self.tabBarController?.selectedIndex = 1
        
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
