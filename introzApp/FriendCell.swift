//
//  FriendCell.swift
//  introzApp
//
//  Created by ahmad shiddiq on 07/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class FriendCell : UICollectionViewCell{
    var friendController: FriendsController?
    
    var friendpost: Friends?{
        didSet{
            guard let l_name = friendpost?.name  else{
                print("data errot")
                 return
            }
            label_name.text = l_name
            
            if let l_jmlteman = friendpost?.num_totaltemansama{
                label_friendrelation.text = l_jmlteman
            }
            
            if let limage = friendpost?.name_image{
                image_profil.image = UIImage(named: limage)
            }
        }
    }
    
    let image_profil: UIImageView = {
        var imageProfil =  UIImageView()
        return imageProfil
    }()

    let label_name : UILabel = {
        var labelName = UILabel()
        labelName.numberOfLines = 1
        labelName.font = UIFont.boldSystemFont(ofSize: 12)
        return labelName
    }()
    
    let label_friendrelation: UILabel = {
        var labelFriendrelation = UILabel()
        labelFriendrelation.numberOfLines = 1
        labelFriendrelation.font = UIFont.systemFont(ofSize: 10)
        labelFriendrelation.textColor = UIColor(red: 155/255, green: 161/255, blue: 175/255, alpha: 1)
        return labelFriendrelation
    }()
    
    let button_accept: UIButton = {
        var btnAccept = UIButton(frame: CGRect(x: 20, y: 29, width: 300, height: 40))
        btnAccept.setTitle("accept", for: .normal)
        btnAccept.backgroundColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        btnAccept.layer.cornerRadius = 5
        btnAccept.contentEdgeInsets  = UIEdgeInsets(top:3 , left: 8, bottom: 3, right: 8)
        btnAccept.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        return btnAccept
    }()
    
    let button_cancel: UIButton = {
        var btnCancel = UIButton()
        btnCancel.setTitle("cancel", for: .normal)
        btnCancel.backgroundColor =  .pinkSelect
        btnCancel.layer.cornerRadius = 5
        btnCancel.contentEdgeInsets  = UIEdgeInsets(top:3 , left: 8, bottom: 3, right: 8)
        btnCancel.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        return btnCancel
    }()
    
    let viewdata : UIView = {
        let viewdata = UIView()
        return viewdata
    }()
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        setupview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupview(){
        self.backgroundColor = UIColor.white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        
        let horizontalLayout = UIStackView(arrangedSubviews: [button_accept , button_cancel , viewdata])
        horizontalLayout.translatesAutoresizingMaskIntoConstraints = false
        horizontalLayout.distribution = .fillEqually
        horizontalLayout.axis = .horizontal
        
        
        
        let verticalLayout = UIStackView(arrangedSubviews: [label_name, label_friendrelation, horizontalLayout])
        verticalLayout.translatesAutoresizingMaskIntoConstraints = false
        verticalLayout.distribution = .fillEqually
        verticalLayout.axis = .vertical
        
        let layoutFriend = UIStackView(arrangedSubviews: [image_profil, verticalLayout])
         addSubview(layoutFriend)
         layoutFriend.translatesAutoresizingMaskIntoConstraints = false
         layoutFriend.distribution = .fillEqually
         layoutFriend.axis = .horizontal
 
        image_profil.translatesAutoresizingMaskIntoConstraints = false
        image_profil.widthAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8).isActive = true
        image_profil.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.8).isActive = true
        image_profil.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        image_profil.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6).isActive = true

        label_name.translatesAutoresizingMaskIntoConstraints = false
        label_name.leftAnchor.constraint(equalTo: image_profil.rightAnchor, constant: 6).isActive = true
        label_name.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 8).isActive = true
        
        label_friendrelation.translatesAutoresizingMaskIntoConstraints = false
        

        button_accept.translatesAutoresizingMaskIntoConstraints = false
        button_accept.widthAnchor.constraint(equalTo: horizontalLayout.widthAnchor, multiplier: 0.2).isActive = true
        button_cancel.translatesAutoresizingMaskIntoConstraints = false
        button_cancel.widthAnchor.constraint(equalTo: horizontalLayout.widthAnchor, multiplier: 0.2).isActive = true
        button_cancel.leftAnchor.constraint(equalTo: button_accept.rightAnchor, constant: 4).isActive = true
        viewdata.translatesAutoresizingMaskIntoConstraints = false
        viewdata.widthAnchor.constraint(equalTo: horizontalLayout.widthAnchor, multiplier: 0.5).isActive = true

    }
}
