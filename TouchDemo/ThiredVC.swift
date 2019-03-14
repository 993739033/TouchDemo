//
//  ThiredVC.swift
//  TouchDemo
//
//  Created by apple_mini on 2019/3/14.
//  Copyright © 2019年 Scode. All rights reserved.
//

import UIKit

class ThiredVC: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    var rotationAngle:CGFloat = 0
    var currentScale:CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onRotation(_ sender: UIRotationGestureRecognizer) {
        print("\(sender.rotation)")
//        img.transform.tx = img.frame.width/2
//        img.transform.ty = img.frame.height/2
//        img.transform.rotated(by: (sender.rotation * CGFloat(M_PI / 180)))
        img.transform = CGAffineTransform(rotationAngle: self.rotationAngle + sender.rotation)
        
        if(sender.state == .ended){
            self.rotationAngle += sender.rotation
        }
    }
    
    @IBAction func onPinch(_ sender: UIPinchGestureRecognizer) {
//        if sender.state == .ended{
//            currentScale += sender.scale
//        }else if (sender.state == .began && sender.scale == 0){
//            sender.scale = currentScale
//        }
        print("\(sender.scale)")
        currentScale += (sender.scale-1)*0.2
        sender.view?.transform = CGAffineTransform(scaleX: currentScale, y: currentScale)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
