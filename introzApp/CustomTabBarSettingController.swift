//
//  CustomTabBarSettingController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 14/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import  UIKit

class CustomTabBarSettingController :  UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITabBar.appearance().tintColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        
        let settingDetail = SettingDetail()
        let sDetail = UINavigationController(rootViewController: settingDetail)
        sDetail.title = "profil"
        sDetail.tabBarItem.image = UIImage(named: "settings")
        
        
        viewControllers = [settingDetail]
    }
}
