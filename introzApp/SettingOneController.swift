//
//  SettingOneController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 18/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class SettingOneController:  UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayUINav()
        tabBar.isHidden = true
        let registerController = RegisterController()
        let registersController = UINavigationController(rootViewController: registerController)
        viewControllers = [registersController]
    }
}

class SettingTwoController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayUINav()
        tabBar.isHidden = true
        let registertwoController = RegisterPictureController()
        let registerstwoController = UINavigationController(rootViewController: registertwoController)
        viewControllers = [registerstwoController]
    }
}

class lupaPassword: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayUINav()
        tabBar.isHidden = true
        let lupapassword = ForgetPasswordController()
        let lupapass = UINavigationController(rootViewController: lupapassword)
        viewControllers = [lupapass]
    }
}

class editSetting: UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayUINav()
        tabBar.isHidden = true
        let editSetting = TableViewController()
        let edttsSetting = UINavigationController(rootViewController: editSetting)
        viewControllers = [edttsSetting]
    }
}

class editProfil: UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        DisplayUINav()
        tabBar.isHidden = true
        let deNews = ChangeProfil()
        let detailsNews = UINavigationController(rootViewController: deNews)
        viewControllers = [detailsNews]
    }
}

func DisplayUINav(){
    UINavigationBar.appearance().barTintColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
    UINavigationBar.appearance().tintColor = UIColor.white
    UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
}

