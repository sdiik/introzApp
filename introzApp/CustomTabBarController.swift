//
//  CustomTabBarController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 07/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class CustomTabBarController : UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITabBar.appearance().tintColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        
        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigatiorController = UINavigationController(rootViewController: feedController)
        navigatiorController.title = "Home"
        navigatiorController.tabBarItem.image = UIImage(named: "main")
        
        let friendsController = FriendsController(collectionViewLayout: UICollectionViewFlowLayout())
        let friendController = UINavigationController(rootViewController: friendsController)
        friendController.title = "Friend"
        friendController.tabBarItem.image = UIImage(named: "friends")
        
        let notificationsController = NotificationsController(collectionViewLayout: UICollectionViewFlowLayout())
        let notificationController = UINavigationController(rootViewController: notificationsController)
        notificationController.title = "Notification"
        notificationController.tabBarItem.image = UIImage(named: "notification")
        
        let settingsController = SettingController()
        let settingController = UINavigationController(rootViewController: settingsController)
        settingController.title = "Setting"
        settingController.tabBarItem.image = UIImage(named: "settings")
        
        viewControllers = [navigatiorController, friendController, notificationController, settingController]
    
    }
    
    
}
