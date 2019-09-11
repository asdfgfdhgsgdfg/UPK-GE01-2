//
//  SelectBodyView.swift
//  UPK-GE01
//
//  Created by kuwan on 2019/9/2.
//  Copyright © 2019 umehealltd. All rights reserved.
//

import Foundation
import UIKit

class SelectBodyView : UIView{
    
    let backBody = BackBody();
    let frontBody = FrontBody();
    
    //默认方向为前面
    var direction = Direction.Back
    
    enum Direction {
        case Back
        case Front
    }
    
    override func draw(_ rect: CGRect) {
        if(direction == Direction.Front){
            frontBody.drawFrontbodyCanvas(frame: rect, resizing: .aspectFit)
        }else{
            backBody.drawBackBodyCanvas(frame: rect, resizing: .aspectFit)
        }
    }
    
    func ChangeDirection(direction:Direction){
        self.direction = direction;
        self.setNeedsDisplay()
    }
}

//手势操作
extension SelectBodyView{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //跟Android 不同，没有双击进入下一个，只有选中操作
        //获取到点击列表
        let clickList = (touches as NSSet).allObjects
        
        let endTouch = clickList[clickList.count - 1] as! UITouch
        let endPoint = endTouch.location(in: self)
        
        if(direction == Direction.Front){
            frontBody.clickBody(point: endPoint)
        }else{
            backBody.clickBody(point: endPoint)
        }
        
        self.setNeedsDisplay()
    }
}
