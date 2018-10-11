//
//  HTLeadingViewController.swift
//  HT Love
//
//  Created by os8 on 2018/10/11.
//  Copyright © 2018年 Tom. All rights reserved.
//

import UIKit
import Lottie

class HTLeadingViewController: HTBaseViewController {
    let animationView = LOTAnimationView(name: "emotion_icon_smile");

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        animationView.play()

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


//mark UI
extension HTLeadingViewController{
    
    func setUI(){
        self.view.addSubview(animationView)
        animationView.frame = CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenWidth)
        animationView.autoReverseAnimation = true
        animationView.loopAnimation = true
        animationView.play()
        
        
        
        let weChatLogButton = UIButton(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: kScreenWidth))
        
        
    }
    
}
