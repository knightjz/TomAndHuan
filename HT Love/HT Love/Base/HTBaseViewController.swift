//
//  HTBaseViewController.swift
//  HT Love
//
//  Created by os8 on 2018/10/10.
//  Copyright © 2018年 Tom. All rights reserved.
//

import UIKit
import Reachability

class HTBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //网络监听
        self.starNetMonitor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func starNetMonitor() {
        
        //declare this property where it won't go out of scope relative to your listener
        let reachability = Reachability()!
        
        reachability.whenReachable = { reachability in
            if reachability.connection == .wifi {
                print("连接到WiFi")
                reachability.stopNotifier()
            } else {
                print("连接到Cellular")
                reachability.stopNotifier()
            }
        }
        reachability.whenUnreachable = { _ in
            print("无法连接到网络")
//            reachability.stopNotifier()
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("无法开始网络监听")
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
