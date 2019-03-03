//
//  LoginCell.swift
//  introzApp
//
//  Created by ahmad shiddiq on 26/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class LoginCell : UICollectionViewCell{
    var controller:UIViewController?
    
    private let logoImage: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logo_anaknasional"))
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
 
    private let email_field: UITextField = {
        let emailField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        emailField.placeholder = "Enter email"
        emailField.font = UIFont.systemFont(ofSize: 15)
        emailField.borderStyle = .roundedRect
        emailField.backgroundColor = .white
        emailField.keyboardType = UIKeyboardType.emailAddress
        return emailField
    }()
    
    private let password_field: UITextField = {
        let PasswordField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        PasswordField.placeholder = "Enter Password"
        PasswordField.font = UIFont.systemFont(ofSize: 15)
        PasswordField.borderStyle = .roundedRect
        PasswordField.isSecureTextEntry = true
        PasswordField.keyboardType = UIKeyboardType.numberPad
        PasswordField.backgroundColor = .white
        return PasswordField
    }()
    
    private let login_button : UIButton = {
       let loginButton = UIButton(frame: CGRect(x: 20, y: 29, width: 300, height: 40))
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        loginButton.layer.cornerRadius = 5
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return loginButton
    }()
    
    private let forget_password : UILabel = {
        let lb_forgetpass = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        lb_forgetpass.text = "Forget Password"
        lb_forgetpass.textColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        lb_forgetpass.font = UIFont.boldSystemFont(ofSize: 14)
        lb_forgetpass.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        return lb_forgetpass
    }()
    
    let join_now : UILabel = {
        let lb_joinnow = UILabel()
        lb_joinnow.text = "Join us"
        lb_joinnow.textAlignment = .right
        lb_joinnow.textColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        lb_joinnow.font = UIFont.boldSystemFont(ofSize: 14)
        lb_joinnow.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        return lb_joinnow
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        actionButton()
        actionMain()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        let Relative = UIView()
        addSubview(Relative)
        
        Relative.backgroundColor =  .white
        Relative.translatesAutoresizingMaskIntoConstraints = false
        Relative.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        Relative.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        Relative.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        Relative.heightAnchor.constraint(equalTo:  heightAnchor).isActive = true
        Relative.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        Relative.rightAnchor.constraint(equalTo:  rightAnchor).isActive = true
        Relative.topAnchor.constraint(equalTo: topAnchor).isActive = true
        Relative.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

        addSubview(email_field)
        email_field.translatesAutoresizingMaskIntoConstraints = false
        email_field.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        email_field.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        email_field.widthAnchor.constraint(equalToConstant: 250).isActive = true
        email_field.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        addSubview(password_field)
        password_field.translatesAutoresizingMaskIntoConstraints = false
        password_field.topAnchor.constraint(equalTo: email_field.bottomAnchor, constant: 14).isActive = true
        password_field.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        password_field.widthAnchor.constraint(equalToConstant: 250).isActive = true
        password_field.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        addSubview(login_button)
        login_button.translatesAutoresizingMaskIntoConstraints = false
        login_button.topAnchor.constraint(equalTo: password_field.bottomAnchor, constant: 14).isActive = true
        login_button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        login_button.widthAnchor.constraint(equalToConstant: 250).isActive = true
        login_button.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        addSubview(logoImage)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.bottomAnchor.constraint(equalTo: email_field.topAnchor, constant: -14).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let layoutbutton = UIStackView(arrangedSubviews: [forget_password, join_now])
        addSubview(layoutbutton)
        layoutbutton.translatesAutoresizingMaskIntoConstraints = false
        layoutbutton.distribution = .fillEqually
        layoutbutton.axis = .horizontal
        
        layoutbutton.topAnchor.constraint(equalTo: login_button.bottomAnchor).isActive = true
        layoutbutton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        layoutbutton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        layoutbutton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func actionButton(){
        let toRegister = UITapGestureRecognizer(target: self, action: #selector(LoginCell.toRegister))
        join_now.isUserInteractionEnabled = true
        join_now.addGestureRecognizer(toRegister)
        
        let toForgetPass = UITapGestureRecognizer(target: self, action: #selector(LoginCell.toForgetPassword))
        forget_password.isUserInteractionEnabled = true
        forget_password.addGestureRecognizer(toForgetPass)
    }
    
    func actionMain(){
        login_button.addTarget(self, action: #selector(toCustom), for: .touchUpInside)
    }
    
    @objc func toRegister(){ 
        controller?.present(SettingOneController(), animated: true, completion: nil)
    }
    
    @objc func toCustom(){
        controller?.present(CustomTabBarController(), animated: true, completion: nil)
    }
    
    @objc func toForgetPassword(){
        controller?.present(lupaPassword(), animated: true, completion: nil)
    }

}

