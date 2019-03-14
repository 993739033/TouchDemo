//
//  SecondViewController.swift
//  TouchDemo
//
//  Created by apple_mini on 2019/3/14.
//  Copyright © 2019年 Scode. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func onTap(_ sender: Any) {
        print("Tap!!")
        if(ind.isAnimating){
            ind.stopAnimating()
        }else{
            ind.startAnimating()
        }
    }
    
    @IBOutlet weak var ind: UIActivityIndicatorView!
    
    
    @IBAction func onPan(_ sender: UIPanGestureRecognizer) {
        print("\(sender.state.rawValue)")
        
        if sender.state != .ended && sender.state != .failed{
            let po = sender.location(in: sender.view?.superview)
            sender.view?.center = po
        }
    }
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
        print("\(sender.direction.rawValue)")
        
        switch(sender.direction){
            
        case .down:
            print("向下滑动")
        case .up:
            print("向上滑动")
        case .left:
            print("向左滑动")
        case .right:
            print("向右滑动")
        default:
            print("other")
        }
        
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
