//
//  AppDelegate.swift
//  introzApp
//
//  Created by ahmad shiddiq on 23/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        
//        let tableViewController = TableViewController(style: .grouped)
//        let navController = UINavigationController(rootViewController: tableViewController)
//        window?.rootViewController = navController
        
  
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let swipingController = SwippingController(collectionViewLayout: layout)
        window?.rootViewController = swipingController

//       window?.rootViewController =  DetailNews()
        
        //window =  UIWindow()
        //window?.makeKeyAndVisible()

//        let feedController = FeedController(collectionViewLayout: UICollectionViewFlowLayout())
//        let navigatiorController = UINavigationController(rootViewController: feedController)
//        window?.rootViewController = navigatiorController
        
        //window?.rootViewController =  CustomTabBarController()
        
        //var navigationBarAppearace = UINavigationBar.appearance()
        //navigationBarAppearace.backgroundColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1.0)
        //navigationBarAppearace.barTintColor = UIColor.white
        
        //To change Navigation Bar Background Color
        //UINavigationBar.appearance().barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1.0)
        //To change Back button title & icon color
        //UINavigationBar.appearance().tintColor = UIColor.white
        //To change Navigation Bar Title Color
        //UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        //UITabBar.appearance().tintColor = UIColor.init(red: 70/255, green: 146/255, blue: 250/255, alpha: 1)
        
        // UINavigationBar.appearance().backgroundColor = UIColor.red
        // UIBarButtonItem.appearance().setTitleTextAttributes(NSAttributedString.Key.foregroundColor: UIColor.white, for: .normal)
        // UINavigationBar.appearance().tintColor = .magenta
        //application.statusBarStyle = .lightContent
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}
