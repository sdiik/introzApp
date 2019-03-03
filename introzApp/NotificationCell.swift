//
//  NotificationCell.swift
//  introzApp
//
//  Created by ahmad shiddiq on 17/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class NotificationCell: UICollectionViewCell{
    var ntoficationcontroller : NotificationsController?
    
    var notificationPost : Notifications?{
        didSet{
            if let pengirim = notificationPost?.name_pengirim{
                npengirim.text = pengirim
            }
            if let judul = notificationPost?.title{
                njudul.text = judul
            }
            if let keterangan = notificationPost?.keterangan{
                nketerangan.text = keterangan
            }
            
            if let date = notificationPost?.date, let time = notificationPost?.time{
                let attText = NSMutableAttributedString(string: time, attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.gray])
                attText.append(NSAttributedString(string:"\n"+date, attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.systemFont(ofSize: 10),NSAttributedString.Key.foregroundColor: UIColor.gray]))
                datetime.attributedText = attText
            }
        }
    }
    
    
    let npengirim: UILabel = {
        var npengirim = UILabel()
        npengirim.text = "Jay bay"
        npengirim.numberOfLines = 1
        npengirim.font = UIFont.systemFont(ofSize: 12)
        return npengirim
    }()
    
    let njudul: UILabel = {
        var njudul = UILabel()
        njudul.text = "Take care of your child"
        njudul.numberOfLines = 1
        njudul.font = UIFont.boldSystemFont(ofSize: 14)
        return njudul
    }()
    
    let nketerangan: UILabel = {
        var nketerangan  = UILabel()
        nketerangan.text = "be careful, kidnapping often occurs in the New York area"
        nketerangan.font = UIFont.systemFont(ofSize: 10)
        return nketerangan
    }()
    
    let nView: UIView = {
        let nView = UIView() 
        return nView
    }()
    
    let datetime: UILabel = {
        var datetime = UILabel()
        datetime.numberOfLines = 2
        let attText = NSMutableAttributedString(string: "19:30", attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.gray])
        attText.append(NSAttributedString(string:"\n 12/12/18", attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.systemFont(ofSize: 10),NSAttributedString.Key.foregroundColor: UIColor.gray]))
        datetime.attributedText = attText
        datetime.textAlignment = .center
        return datetime
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupviwUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupviwUI(){
        self.backgroundColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        self.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
      
        let layoutAll = UIStackView(arrangedSubviews: [nView, datetime])
        layoutAll.translatesAutoresizingMaskIntoConstraints = false
        layoutAll.axis = .horizontal
        layoutAll.distribution = .fillEqually
        self.addSubview(layoutAll)
        
        
        nView.translatesAutoresizingMaskIntoConstraints = false
        nView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        nView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        nView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        nView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        nView.addSubview(npengirim)
        nView.addSubview(njudul)
        nView.addSubview(nketerangan)

        datetime.translatesAutoresizingMaskIntoConstraints = false
        datetime.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.2).isActive = true
        datetime.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -4).isActive = true
       
        njudul.translatesAutoresizingMaskIntoConstraints = false
        njudul.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        njudul.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        njudul.rightAnchor.constraint(equalTo: datetime.leftAnchor, constant: -8).isActive = true
        npengirim.translatesAutoresizingMaskIntoConstraints = false
        npengirim.topAnchor.constraint(equalTo: njudul.bottomAnchor, constant: 4).isActive = true
        npengirim.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        npengirim.rightAnchor.constraint(equalTo: datetime.leftAnchor, constant: -8).isActive = true
        nketerangan.translatesAutoresizingMaskIntoConstraints = false
        nketerangan.topAnchor.constraint(equalTo: npengirim.bottomAnchor, constant: 4).isActive = true
        nketerangan.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        nketerangan.rightAnchor.constraint(equalTo: datetime.leftAnchor, constant: -8).isActive = true
    }
}
