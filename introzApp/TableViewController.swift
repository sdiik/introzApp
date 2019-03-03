//
//  TableViewController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 21/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController{
    
    var firstNameCell: UITableViewCell = UITableViewCell()
    var twoNameCell: UITableViewCell = UITableViewCell()
    var threeNameCell: UITableViewCell = UITableViewCell()
    var aboutNameCell: UITableViewCell = UITableViewCell()
    var logoutCell: UITableViewCell = UITableViewCell()
    
    override func loadView() {
        super.loadView()
        
        let leftb = UIButton(type: .system)
        leftb.setImage(UIImage(named: "back"), for: .normal)
        leftb.setTitle("Back", for: .normal)
        leftb.sizeToFit()
        leftb.addTarget(self, action: #selector(toDismissPass), for: .touchUpInside)
        
        navigationItem.title = "Setting"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        
        let img = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        img.image = UIImage(named: "next")
        
        let img2 = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        img2.image = UIImage(named: "next")
        
        let img3 = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        img3.image = UIImage(named: "next")
        
        self.firstNameCell.textLabel?.text = "Change Password"
        self.firstNameCell.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        self.firstNameCell.accessoryView = img
        
        self.twoNameCell.textLabel?.text = "Change Profil"
        self.twoNameCell.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        self.twoNameCell.accessoryView = img2
        
        self.threeNameCell.textLabel?.text = "Disable Photo"
        self.threeNameCell.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        self.threeNameCell.accessoryType  = UITableViewCell.AccessoryType.checkmark
        
        self.aboutNameCell.textLabel?.text = "About"
        self.aboutNameCell.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
        self.aboutNameCell.accessoryView = img3
        
        self.logoutCell.textLabel?.text = "Logout"
        self.logoutCell.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)
       
    }
    
    @objc func toDismissPass(){
        self.dismiss(animated: true, completion: nil)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 3
        case 1: return 1
        case 2: return 1
        default: fatalError("Unknown number of sections")
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row{
            case 0: return self.firstNameCell
            case 1: return self.twoNameCell
            case 2: return self.threeNameCell
            default : fatalError("Unknow row in section 0")
            }
        case 1:
            switch indexPath.row{
            case 0: return self.aboutNameCell
            default: fatalError("Unknow row in section 1")
            }
        case 2:
            switch indexPath.row{
            case 0: return self.logoutCell
            default: fatalError("Unkown row in section 1")
            }
        default: fatalError("Unknow Section")
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Setting"
        case 1: return "About"
        case 2: return "Logout"
        default: fatalError("Unknow section")
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 && indexPath.row == 0 {
            tableView.deselectRow(at: indexPath, animated: false)
            self.present(lupaPassword(), animated: true, completion: nil)
        }
        
        if indexPath.section == 0 && indexPath.row == 1{
            tableView.deselectRow(at: indexPath, animated: false)
            self.present(editProfil(), animated: true, completion: nil)
        }
        
        if indexPath.section == 0 && indexPath.row == 2 {
            tableView.deselectRow(at: indexPath, animated: false)
            
            if (self.threeNameCell.accessoryType == UITableViewCell.AccessoryType.none){
                self.threeNameCell.accessoryType = UITableViewCell.AccessoryType.checkmark
            }else{
                self.threeNameCell.accessoryType = UITableViewCell.AccessoryType.none
            }
        }
      
        if indexPath.section == 1 && indexPath.row == 0 {
            tableView.deselectRow(at: indexPath, animated: false)
            let urzl = NSURL(string: "http://p2tp2a-malangkab.org/category/profil-lembaga/")! as URL
            UIApplication.shared.open(urzl, options: [:], completionHandler: nil)
        }
        
        if indexPath.section == 2 && indexPath.row == 0 {
            tableView.deselectRow(at: indexPath, animated: false)
            self.present(LoginTwoController(), animated: true, completion: nil)
        }
    }
}
