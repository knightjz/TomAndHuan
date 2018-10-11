//
//  ConfigHreaderSwiftFile.swift
//  HT Love
//
//  Created by os8 on 2018/10/11.
//  Copyright © 2018年 Tom. All rights reserved.
//

import UIKit


let kScreenHeight = UIScreen.main.bounds.size.height
let kScreenWidth = UIScreen.main.bounds.size.width

let colorStringHex = "F7AFF3"


//swift中的写法
func RGBCOLOR(r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor
{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}


