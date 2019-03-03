//
//  RegisterPictureController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 29/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class RegisterPictureController : UIViewController{
    
    private let lb_title: UILabel = {
        let lbTitle = UILabel()
        lbTitle.text = "Upload your photos, to make it easier for other mothers to communicate with you"
        lbTitle.font = UIFont.boldSystemFont(ofSize: 14)
        lbTitle.numberOfLines = 0
        lbTitle.textAlignment = .center
        return lbTitle
    }()
    
    private let ket_title: UILabel = {
        let ktTitle = UILabel()
        ktTitle.text = "Please Take your Avatar for this Application."
        ktTitle.font = UIFont.systemFont(ofSize: 14)
        return ktTitle
    }()
    
    private let img_photo : UIImageView = {
        let imgPhoto = UIImageView()
        imgPhoto.image = UIImage(named: "take_picture")
        imgPhoto.contentMode = .scaleAspectFit
        return imgPhoto
    }()
    
    private let btn_takepicture : UIButton = {
        let btnTakepicture = UIButton(frame: CGRect(x: 20, y: 29, width: 300, height: 40))
        btnTakepicture.setTitle("Re-take", for: .normal)
        btnTakepicture.backgroundColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        btnTakepicture.layer.cornerRadius = 10
        btnTakepicture.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return btnTakepicture
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        let leftb = UIButton(type: .system)
        leftb.setImage(UIImage(named: "back"), for: .normal)
        leftb.setTitle("Back", for: .normal)
        leftb.sizeToFit()
        leftb.addTarget(self, action: #selector(toRegisterOne), for: .touchUpInside)
        
        let rightb = UIButton(type: .system)
        rightb.setTitle("Done", for: .normal)
        rightb.sizeToFit()
        
        rightb.addTarget(self, action: #selector(toMain), for: .touchUpInside)
        navigationItem.title = "Upload Image"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightb)
        
        
        setupView()
     }
    
    @objc func toRegisterOne(){
        self.dismiss(animated: true, completion: nil)
        self.present(SettingOneController(), animated: true, completion: nil)
        
    }
    
    @objc func toMain(){
         self.present(CustomTabBarController(), animated: true, completion: nil)
    }
    
    func setupView(){
        view.addSubview(lb_title)
        lb_title.translatesAutoresizingMaskIntoConstraints = false
        lb_title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant : 24).isActive = true
        lb_title.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        lb_title.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        lb_title.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
      
        view.addSubview(img_photo)
        img_photo.translatesAutoresizingMaskIntoConstraints = false
        img_photo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        img_photo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        img_photo.widthAnchor.constraint(equalToConstant: 120).isActive = true
        img_photo.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        view.addSubview(btn_takepicture)
        btn_takepicture.translatesAutoresizingMaskIntoConstraints = false
        btn_takepicture.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        btn_takepicture.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -24).isActive = true
        btn_takepicture.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
}
