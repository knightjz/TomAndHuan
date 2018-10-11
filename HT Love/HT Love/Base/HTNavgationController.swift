//
//  HTNavgationController.swift
//  HT Love
//
//  Created by os8 on 2018/10/10.
//  Copyright © 2018年 Tom. All rights reserved.
//

import UIKit

class HTNavgationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate = self as? UINavigationControllerDelegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


extension HTNavgationController:UINavigationBarDelegate{
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        // 判断要显示的控制器是否是自己
        let isHidden = viewController.isKind(of: HTChatViewController.self)
//            || viewController.isKind(of: FirstViewController.self)
        
        self.setNavigationBarHidden(isHidden, animated: true)
        
        //导航被隐藏后的手势返回
        if isHidden {
            self.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
            self.interactivePopGestureRecognizer?.isEnabled = true
        }
    }
    
    
}
