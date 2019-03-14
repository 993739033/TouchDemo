//
//  TouchView2.swift
//  TouchDemo
//
//  Created by apple_mini on 2019/3/14.
//  Copyright © 2019年 Scode. All rights reserved.
//

import UIKit

class TouchView2: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("\(touches.count)")
        for touch in touches{
            addPoint(touch: touch)
        }
    }
    
    func addPoint(touch:UITouch){
        let p = touch.location(in: self.superview)
        let img = UIImageView(image: UIImage(named: "point"))
        img.center = p
        self.addSubview(img)
        UIView.animate(withDuration: 5, animations: {
            img.alpha = 0
        }) { (finish) in
            img.removeFromSuperview()
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            addPoint(touch: touch)
        }
    }

}
