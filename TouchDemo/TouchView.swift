//
//  TouchView.swift
//  TouchDemo
//
//  Created by apple_mini on 2019/3/13.
//  Copyright © 2019年 Scode. All rights reserved.
//

import UIKit

class TouchView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("\(touches.count)")
        let touch = touches.first
        let point = touch?.location(in: self.superview)
        self.center = point!
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let point = touch?.location(in: self.superview)
        self.center = point!
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("end")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("cancel")
    }

}
