//
//  EditSetting.swift
//  introzApp
//
//  Created by ahmad shiddiq on 21/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class EditSetting : UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftb = UIButton(type: .system)
        leftb.setImage(UIImage(named: "back"), for: .normal)
        leftb.setTitle("Back", for: .normal)
        leftb.sizeToFit()
        leftb.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        
        navigationItem.title = "Setting"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        tableView.register(EditSettingCell.self, forCellReuseIdentifier: "cellId")
        setupAction()
        setupView()
    }
    
    func setupAction(){
    }
    
    @objc func dismissView(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! EditSettingCell
    }
    
}







