//
//  HTTabarController.swift
//  HT Love
//
//  Created by os8 on 2018/10/10.
//  Copyright © 2018年 Tom. All rights reserved.
//

//import UIKit
import RAMAnimatedTabBarController

class HTTabarController: RAMAnimatedTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.white
        //添加所有的子控制器
        addAllChildsControllors()
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


//MARK: - UI

extension HTTabarController {
    ///添加所有的子控制器
    fileprivate func addAllChildsControllors() {
        ///首页
        addOneChildVC(childVC: HTChatViewController(), title: "聊天", image: UIImage(imageLiteralResourceName: "tabbar-chat"), selecteImage: UIImage(named: "tabbar-chat"))
        //直播
        addOneChildVC(childVC: HTInteractiveViewController(), title: "记忆", image: UIImage(imageLiteralResourceName: "tabbar-mem"), selecteImage: UIImage(named: "tabbar-mem"))
        //关注
//        addOneChildVC(childVC: FollowViewController(), title: "关注", image: UIImage(imageLiteralResourceName: "btn_live_normal"), selecteImage: UIImage(named: "btn_live_selected"))
        
        //我的
        addOneChildVC(childVC: HTSettingViewController(), title: "设置", image: UIImage(imageLiteralResourceName: "tabbar-setting"), selecteImage: UIImage(named: "tabbar-setting"))
        
        
        
    }
    
    ///添加一个控制器
    private func addOneChildVC(childVC: UIViewController, title: String?, image: UIImage?, selecteImage: UIImage?) {
        
        //1.添加子控制器
        let navVC = HTNavgationController(rootViewController: childVC)
//        addChildViewController(navVC)
        addChild(navVC)
        //2.添加标题
        let item = RAMAnimatedTabBarItem(title: title, image: image, selectedImage: selecteImage)
        
        let animation = RAMRotationAnimation()
        animation.direction = .left
        animation.iconSelectedColor = UIColor.orange
        animation.textSelectedColor = UIColor.orange
        item.animation = animation
        
        
        navVC.tabBarItem = item
        
        
    }
}



