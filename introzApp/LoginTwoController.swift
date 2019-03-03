//
//  LoginTwoController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 20/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class LoginTwoController : UIViewController {
    
    let label_title: UILabel = {
        var ltitle = UILabel()
        ltitle.numberOfLines = 0
        ltitle.text = "Welcome, we help you to get information about children"
        ltitle.textAlignment = .center
        ltitle.font = UIFont.boldSystemFont(ofSize: 16)
        return ltitle
    }()
    
    let label_name: UILabel = {
        var lname = UILabel()
        lname.text = "Hi,Steven jobs"
        lname.textAlignment = .center
        lname.font = UIFont.systemFont(ofSize: 18)
        return lname
    }()
    
    let label_forgetpassword: UILabel = {
        var lforgetpassword = UILabel()
        lforgetpassword.text = "Forget Password"
        lforgetpassword.textAlignment = .left
        lforgetpassword.font = UIFont.systemFont(ofSize: 12)
        return lforgetpassword
    }()
    
    let label_register: UILabel = {
        var lregister = UILabel()
        lregister.text = "Register"
        lregister.textAlignment = .left
        lregister.font = UIFont.systemFont(ofSize: 12)
        return lregister
    }()
    
    
    let tx_password : UITextField = {
        var txPassword = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txPassword.placeholder = "Password"
        txPassword.textAlignment = .center
        txPassword.keyboardType = UIKeyboardType.numberPad
        txPassword.isSecureTextEntry = true
        txPassword.font = UIFont.systemFont(ofSize: 14)
        txPassword.borderStyle = .roundedRect
        txPassword.backgroundColor = .white
        return txPassword
    }()
    
    let login_button : UIButton = {
        let loginButton = UIButton(frame: CGRect(x: 20, y: 29, width: 300, height: 40))
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        loginButton.layer.cornerRadius = 5
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return loginButton
    }()
    
    let avatar: UIImageView = {
        var avatar = UIImageView()
        avatar.image = UIImage(named: "mother")
        avatar.contentMode = .scaleAspectFit
        return avatar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupview()
        setupAction()
    }
    
    func setupAction(){
        login_button.addTarget(self, action: #selector(toMain), for: .touchUpInside)
        let toRegister = UITapGestureRecognizer(target: self, action: #selector(LoginTwoController.toRegister))
        label_register.isUserInteractionEnabled = true
        label_register.addGestureRecognizer(toRegister)
        
        let toForgetPass = UITapGestureRecognizer(target: self, action: #selector(LoginTwoController.toForgetPassword))
        label_forgetpassword.isUserInteractionEnabled = true
        label_forgetpassword.addGestureRecognizer(toForgetPass)
    }

    @objc func toRegister(){
        self.present(SettingOneController(), animated: true, completion: nil)
    }

    @objc func toMain(){
        self.present(CustomTabBarController(), animated: true, completion: nil)
    }
    
    @objc func toForgetPassword(){
        self.present(lupaPassword(), animated: true, completion: nil)
    }
    
    func setupview(){
        view.backgroundColor = .white
        view.addSubview(label_title)
        label_title.translatesAutoresizingMaskIntoConstraints = false
        label_title.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label_title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label_title.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        label_title.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true

        view.addSubview(label_name)
        label_name.translatesAutoresizingMaskIntoConstraints = false
        label_name.bottomAnchor.constraint(equalTo: label_title.topAnchor, constant: -8).isActive = true
        label_name.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label_name.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        label_name.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true

        view.addSubview(avatar)
        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.bottomAnchor.constraint(equalTo: label_name.topAnchor, constant: -16).isActive = true
        avatar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 100).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 100).isActive = true

        view.addSubview(tx_password)
        tx_password.translatesAutoresizingMaskIntoConstraints = false
        tx_password.topAnchor.constraint(equalTo: label_title.bottomAnchor, constant: 16).isActive = true
        tx_password.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tx_password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_password.heightAnchor.constraint(equalToConstant: 40).isActive = true

        view.addSubview(login_button)
        login_button.translatesAutoresizingMaskIntoConstraints = false
        login_button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        login_button.topAnchor.constraint(equalTo: tx_password.bottomAnchor, constant: 8).isActive = true
        login_button.widthAnchor.constraint(equalToConstant: 250).isActive = true
        login_button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let layoutbutton = UIStackView(arrangedSubviews: [label_register, label_forgetpassword])
        view.addSubview(layoutbutton)
        layoutbutton.translatesAutoresizingMaskIntoConstraints = false
        layoutbutton.distribution = .fillEqually
        layoutbutton.axis = .horizontal
        
        layoutbutton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: 8 ).isActive = true
        layoutbutton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        layoutbutton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        layoutbutton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        layoutbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        label_register.translatesAutoresizingMaskIntoConstraints = false
        label_register.widthAnchor.constraint(equalTo: layoutbutton.widthAnchor, multiplier: 0.5).isActive = true
        label_register.textAlignment = .left
        label_forgetpassword.translatesAutoresizingMaskIntoConstraints = false
        label_forgetpassword.textAlignment = .right
        label_forgetpassword.widthAnchor.constraint(equalTo: layoutbutton.widthAnchor, multiplier: 0.5).isActive = true
        
    }
}
