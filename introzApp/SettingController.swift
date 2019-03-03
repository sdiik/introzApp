//
//  SettingController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 12/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class SettingController : UIViewController{
    
    lazy var scr: UIScrollView = {
        let viewScroll = UIScrollView()
        viewScroll.translatesAutoresizingMaskIntoConstraints = false
        viewScroll.layoutIfNeeded()
        viewScroll.isScrollEnabled = true
        viewScroll.backgroundColor = .white
        viewScroll.contentOffset.x = 0
        return viewScroll
    }()
    
    let imageprofil: UIImageView = {
        var iprofil = UIImageView()
        iprofil.image = UIImage(named: "steven_jobs")
        iprofil.contentMode = .scaleAspectFit
        return iprofil
    }()
    
    let mottoprofil: UILabel = {
        var mprofil = UILabel()
        mprofil.numberOfLines = 0
        mprofil.text = "Your time is limited, so dont  waste it living someone else's life"
        mprofil.font = UIFont.systemFont(ofSize: 14)
        mprofil.textColor = UIColor.gray
        mprofil.textAlignment = .center
        return mprofil
    }()
    
    let namaprofil: UILabel = {
        var nprofil = UILabel()
        nprofil.text = "Steven Jobs"
        nprofil.font = UIFont.boldSystemFont(ofSize: 14)
        nprofil.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return nprofil
    }()
    
    let yourdate : UILabel = {
        var yd = UILabel()
        yd.text = "Date"
        yd.font = UIFont.systemFont(ofSize: 14)
        yd.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return yd
    }()
    
    let spaceDate : UILabel = {
        var sline = UILabel()
        sline.text = " : "
        sline.font = UIFont.systemFont(ofSize: 14)
        sline.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return sline
    }()
    
    let tyourdate: UILabel = {
        var tyd = UILabel()
        tyd.text = "18 Agutustus 2000"
        tyd.font = UIFont.systemFont(ofSize: 14)
        tyd.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return tyd
    }()
    
    let yourmother: UILabel = {
        var ym = UILabel()
        ym.text = "Mother Name"
        ym.font = UIFont.systemFont(ofSize: 14)
        ym.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return ym
    }()
    
    let spaceMother : UILabel = {
        var sline = UILabel()
        sline.text = " : "
        sline.font = UIFont.systemFont(ofSize: 14)
        sline.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return sline
    }()
    
    let tyourmother: UILabel = {
        var tym = UILabel()
        tym.text = "Siti Fatimah"
        tym.font = UIFont.systemFont(ofSize: 14)
        tym.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return tym
    }()
    
    let yourphone: UILabel = {
        var yp = UILabel()
        yp.text = "Phone Number"
        yp.font = UIFont.systemFont(ofSize: 14)
        yp.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return yp
    }()
    
    let spacePhone : UILabel = {
        var sline = UILabel()
        sline.text = " : "
        sline.font = UIFont.systemFont(ofSize: 14)
        sline.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return sline
    }()
    
    let tyourphone: UILabel = {
        var typ = UILabel()
        typ.text = "082331014279"
        typ.font = UIFont.systemFont(ofSize: 14)
        typ.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return typ
    }()
    
    let youraddress: UILabel = {
        var ya = UILabel()
        ya.numberOfLines = 1
        ya.text = "Address"
        ya.font = UIFont.systemFont(ofSize: 14)
        ya.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return ya
    }()
    
    let spaceAddress : UILabel = {
        var sline = UILabel()
        sline.text = " : "
        sline.font = UIFont.systemFont(ofSize: 14)
        sline.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return sline
    }()
    
    let tyouraddress: UILabel = {
        var tya = UILabel()
        tya.numberOfLines = 0
        tya.text = "Waru, Kabupaten sidoarjo, Jawa timur"
        tya.font = UIFont.systemFont(ofSize: 14)
        tya.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return tya
    }()
    
    let yourzipcode: UILabel = {
        var yz = UILabel()
        yz.text = "Zip code"
        yz.font = UIFont.systemFont(ofSize: 14)
        yz.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return yz
    }()
    
    let spaceZipecode : UILabel = {
        var sline = UILabel()
        sline.text = " : "
        sline.font = UIFont.systemFont(ofSize: 14)
        sline.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return sline
    }()
    
    let tyourzipcode: UILabel = {
        var tyz = UILabel()
        tyz.text = "674323"
        tyz.font = UIFont.systemFont(ofSize: 14)
        tyz.textColor = UIColor(red: 46/255, green: 49/255, blue: 49/255, alpha: 1)
        return tyz
    }()
    
//    let buttonlogout: UIButton = {
//        var blogout = UIButton(frame: CGRect(x: 20, y: 29, width: 300, height: 40))
//        blogout.setTitle("Logout", for: .normal)
//        blogout.backgroundColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
//        blogout.layer.cornerRadius = 5
//        blogout.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
//        return blogout
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.title = "Profil"
        let textAttributeBold = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white]
        //let textAttribute = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributeBold
        
        let rightb = UIButton(type: .system)
        rightb.setImage(UIImage(named: "settings"), for: .normal)
        rightb.sizeToFit()
        rightb.addTarget(self, action: #selector(toEditSetting), for: .touchUpInside)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightb)
 
        setupView()
        //buttonlogout.addTarget(self, action: #selector(logout), for: .touchUpInside)
    }
    
    
    @objc func toEditSetting(){
        self.present(editSetting(), animated: true, completion: nil)
    }
    
//    @objc func logout(){
//        self.present(LoginTwoController(), animated: true, completion: nil)
//    }
    
  
    func setupView(){
        view.backgroundColor = .white
        let viewbackground = scr
        view.addSubview(viewbackground)
        viewbackground.backgroundColor = .white
        viewbackground.translatesAutoresizingMaskIntoConstraints = false
        viewbackground.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewbackground.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        viewbackground.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        viewbackground.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        viewbackground.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        viewbackground.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        viewbackground.addSubview(mottoprofil)
        mottoprofil.translatesAutoresizingMaskIntoConstraints = false
        mottoprofil.centerXAnchor.constraint(equalTo: viewbackground.centerXAnchor).isActive = true
        mottoprofil.centerYAnchor.constraint(equalTo: viewbackground.centerYAnchor).isActive = true
        mottoprofil.leftAnchor.constraint(equalTo: viewbackground.leftAnchor, constant: 24).isActive = true
        mottoprofil.rightAnchor.constraint(equalTo: viewbackground.rightAnchor, constant: -24).isActive = true
        
        viewbackground.addSubview(namaprofil)
        namaprofil.translatesAutoresizingMaskIntoConstraints = false
        namaprofil.centerXAnchor.constraint(equalTo: viewbackground.centerXAnchor).isActive = true
        namaprofil.bottomAnchor.constraint(equalTo: mottoprofil.topAnchor, constant: -16).isActive = true
        
        viewbackground.addSubview(imageprofil)
        imageprofil.translatesAutoresizingMaskIntoConstraints = false
        imageprofil.centerXAnchor.constraint(equalTo: viewbackground.centerXAnchor).isActive = true
        imageprofil.bottomAnchor.constraint(equalTo: namaprofil.topAnchor, constant: -8).isActive = true
        imageprofil.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageprofil.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let layoutketerangan = UIStackView(arrangedSubviews: [yourdate,spaceDate, tyourdate])
        viewbackground.addSubview(layoutketerangan)
        layoutketerangan.translatesAutoresizingMaskIntoConstraints = false
        layoutketerangan.distribution = .fillEqually
        layoutketerangan.axis = .horizontal
        layoutketerangan.topAnchor.constraint(equalTo: mottoprofil.bottomAnchor, constant: 16).isActive = true
        layoutketerangan.centerXAnchor.constraint(equalTo: viewbackground.centerXAnchor).isActive = true
        layoutketerangan.leftAnchor.constraint(equalTo: viewbackground.leftAnchor, constant: 8).isActive = true
        layoutketerangan.rightAnchor.constraint(equalTo: viewbackground.rightAnchor, constant: -8).isActive = true
        
        yourdate.translatesAutoresizingMaskIntoConstraints = false
        yourdate.textAlignment = .right
        yourdate.widthAnchor.constraint(equalTo: layoutketerangan.widthAnchor, multiplier: 0.45).isActive = true
        spaceDate.translatesAutoresizingMaskIntoConstraints = false
        spaceDate.textAlignment = .center
        spaceDate.widthAnchor.constraint(equalTo: layoutketerangan.widthAnchor, multiplier: 0.1).isActive = true
        tyourdate.translatesAutoresizingMaskIntoConstraints = false
        tyourdate.textAlignment = .left
        tyourdate.widthAnchor.constraint(equalTo: layoutketerangan.widthAnchor, multiplier: 0.45).isActive = true
        
        let layoutmother = UIStackView(arrangedSubviews: [yourmother,spaceMother, tyourmother])
        viewbackground.addSubview(layoutmother)
        layoutmother.translatesAutoresizingMaskIntoConstraints = false
        layoutmother.distribution = .fillEqually
        layoutmother.axis = .horizontal
        layoutmother.topAnchor.constraint(equalTo: layoutketerangan.bottomAnchor, constant: 8).isActive = true
        layoutmother.leftAnchor.constraint(equalTo: viewbackground.leftAnchor, constant: 8).isActive = true
        layoutmother.rightAnchor.constraint(equalTo: viewbackground.rightAnchor, constant: -8).isActive = true

        yourmother.translatesAutoresizingMaskIntoConstraints = false
        yourmother.textAlignment = .right
        yourmother.widthAnchor.constraint(equalTo: layoutmother.widthAnchor, multiplier: 0.45).isActive = true
        spaceMother.translatesAutoresizingMaskIntoConstraints = false
        spaceMother.widthAnchor.constraint(equalTo: layoutmother.widthAnchor, multiplier: 0.1).isActive = true
        spaceMother.textAlignment = .center
        tyourmother.translatesAutoresizingMaskIntoConstraints = false
        tyourmother.textAlignment = .left
        tyourmother.widthAnchor.constraint(equalTo: layoutmother.widthAnchor, constant: 0.45).isActive = true
        
        let layoutphone = UIStackView(arrangedSubviews: [yourphone,spacePhone, tyourphone])
        viewbackground.addSubview(layoutphone)
        layoutphone.translatesAutoresizingMaskIntoConstraints = false
        layoutphone.distribution = .fillEqually
        layoutphone.axis = .horizontal
        layoutphone.topAnchor.constraint(equalTo: layoutmother.bottomAnchor, constant: 8).isActive = true
        layoutphone.leftAnchor.constraint(equalTo: viewbackground.leftAnchor, constant: 8).isActive = true
        layoutphone.rightAnchor.constraint(equalTo: viewbackground.rightAnchor, constant: -8).isActive = true
        
        yourphone.translatesAutoresizingMaskIntoConstraints = false
        yourphone.textAlignment = .right
        yourphone.widthAnchor.constraint(equalTo: layoutphone.widthAnchor, multiplier: 0.45).isActive = true
        spacePhone.translatesAutoresizingMaskIntoConstraints = false
        spacePhone.widthAnchor.constraint(equalTo: layoutphone.widthAnchor, multiplier: 0.1).isActive = true
        spacePhone.textAlignment = .center
        tyourphone.translatesAutoresizingMaskIntoConstraints = false
        tyourphone.textAlignment = .left
        tyourphone.widthAnchor.constraint(equalTo: layoutphone.widthAnchor, constant: 0.45).isActive = true
        
        let layoutaddress = UIStackView(arrangedSubviews: [youraddress,spaceAddress, tyouraddress])
        viewbackground.addSubview(layoutaddress)
        layoutaddress.translatesAutoresizingMaskIntoConstraints = false
        layoutaddress.distribution = .fillEqually
        layoutaddress.axis = .horizontal
        layoutaddress.alignment = .top
        layoutaddress.topAnchor.constraint(equalTo: layoutphone.bottomAnchor, constant: 8).isActive = true
        layoutaddress.leftAnchor.constraint(equalTo: viewbackground.leftAnchor, constant: 8).isActive = true
        layoutaddress.rightAnchor.constraint(equalTo: viewbackground.rightAnchor, constant: -8).isActive = true
        
        youraddress.translatesAutoresizingMaskIntoConstraints = false
        youraddress.textAlignment = .right 
        youraddress.widthAnchor.constraint(equalTo: layoutaddress.widthAnchor, multiplier: 0.45).isActive = true
        spaceAddress.translatesAutoresizingMaskIntoConstraints = false
        spaceAddress.widthAnchor.constraint(equalTo: layoutaddress.widthAnchor, multiplier: 0.1).isActive = true
        spaceAddress.textAlignment = .center
        tyouraddress.translatesAutoresizingMaskIntoConstraints = false
        tyouraddress.textAlignment = .left
        tyouraddress.widthAnchor.constraint(equalTo: layoutaddress.widthAnchor, constant: 0.45).isActive = true
        
        let layoutzipcode = UIStackView(arrangedSubviews: [yourzipcode,spaceZipecode, tyourzipcode])
        viewbackground.addSubview(layoutzipcode)
        layoutzipcode.translatesAutoresizingMaskIntoConstraints = false
        layoutzipcode.distribution = .fillEqually
        layoutzipcode.axis = .horizontal
        layoutzipcode.topAnchor.constraint(equalTo: layoutaddress.bottomAnchor, constant: 8).isActive = true
        layoutzipcode.leftAnchor.constraint(equalTo: viewbackground.leftAnchor, constant: 8).isActive = true
        layoutzipcode.rightAnchor.constraint(equalTo: viewbackground.rightAnchor, constant: -8).isActive = true
        
        yourzipcode.translatesAutoresizingMaskIntoConstraints = false
        yourzipcode.textAlignment = .right
        yourzipcode.widthAnchor.constraint(equalTo: layoutzipcode.widthAnchor, multiplier: 0.45).isActive = true
        spaceZipecode.translatesAutoresizingMaskIntoConstraints = false
        spaceZipecode.widthAnchor.constraint(equalTo: layoutzipcode.widthAnchor, multiplier: 0.1).isActive = true
        spaceZipecode.textAlignment = .center
        tyourzipcode.translatesAutoresizingMaskIntoConstraints = false
        tyourzipcode.textAlignment = .left
        tyourzipcode.widthAnchor.constraint(equalTo: layoutzipcode.widthAnchor, constant: 0.45).isActive = true
        
//        viewbackground.addSubview(buttonlogout)
//        buttonlogout.translatesAutoresizingMaskIntoConstraints = false
//        buttonlogout.topAnchor.constraint(equalTo: layoutzipcode.bottomAnchor, constant: 24).isActive = true
//        buttonlogout.centerXAnchor.constraint(equalTo: viewbackground.centerXAnchor).isActive = true
//        buttonlogout.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
}
