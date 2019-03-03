//
//  ForgetPasswordController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 20/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class ForgetPasswordController: UIViewController{
    
    let label_title: UILabel = {
        var ltitle = UILabel()
        ltitle.numberOfLines = 0
        ltitle.text = "You forget your password, \nPlease make a new password easier for you to remember."
        ltitle.font = UIFont.boldSystemFont(ofSize: 16)
        ltitle.textAlignment = .left
        return ltitle
    }()
    
    let label_email: UILabel = {
        var lemail = UILabel()
        lemail.text = "Your email"
        lemail.font = UIFont.systemFont(ofSize: 14)
        lemail.textColor = UIColor.gray
        lemail.textAlignment = .left
        return lemail
    }()
    
    private let email_field: UITextField = {
        let emailField = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        emailField.placeholder = "your email"
        emailField.font = UIFont.systemFont(ofSize: 15)
        emailField.borderStyle = .roundedRect
        emailField.backgroundColor = .white
        emailField.keyboardType = UIKeyboardType.emailAddress
        return emailField
    }()
    
    
    let label_password : UILabel = {
        var password = UILabel()
        password.text = "New Password"
        password.font = UIFont.systemFont(ofSize: 14)
        password.textColor = UIColor.gray
        password.textAlignment = .left
        return password
    }()
    
    let tx_password : UITextField = {
        var txPassword = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txPassword.placeholder = "Password"
        txPassword.keyboardType = UIKeyboardType.numberPad
        txPassword.isSecureTextEntry = true
        txPassword.font = UIFont.systemFont(ofSize: 14)
        txPassword.borderStyle = .roundedRect
        txPassword.backgroundColor = .white
        return txPassword
    }()
    
    let label_verifiasi: UILabel = {
        var verifikasi = UILabel()
        verifikasi.text = "Password Verification"
        verifikasi.font = UIFont.systemFont(ofSize: 14)
        verifikasi.textColor = UIColor.gray
        verifikasi.textAlignment = .left
        return verifikasi
    }()
    
    let tx_vpassword : UITextField = {
        var txvPassword = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txvPassword.placeholder = "Verify Password"
        txvPassword.keyboardType = UIKeyboardType.numberPad
        txvPassword.isSecureTextEntry = true
        txvPassword.font = UIFont.systemFont(ofSize: 14)
        txvPassword.borderStyle = .roundedRect
        txvPassword.backgroundColor = .white
        return txvPassword
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftb = UIButton(type: .system)
        leftb.setImage(UIImage(named: "back"), for: .normal)
        leftb.setTitle("Back", for: .normal)
        leftb.sizeToFit()
        leftb.addTarget(self, action: #selector(toDismissPass), for: .touchUpInside)
        
        let rightb = UIButton(type: .system)
        rightb.setTitle("Done", for: .normal)
        rightb.sizeToFit()
        //rightb.addTarget(self, action: #selector(toMain), for: .touchUpInside)
        
        navigationItem.title = "Forget Password"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightb)
        
        setupView()
    }
    
    @objc func toDismissPass(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupView(){
        view.backgroundColor = .white
        view.addSubview(label_title)
        label_title.translatesAutoresizingMaskIntoConstraints = false
        label_title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        label_title.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        label_title.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        
        view.addSubview(label_email)
        label_email.translatesAutoresizingMaskIntoConstraints = false
        label_email.topAnchor.constraint(equalTo: label_title.bottomAnchor, constant: 16).isActive = true
        label_email.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        label_email.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        
        view.addSubview(email_field)
        email_field.translatesAutoresizingMaskIntoConstraints = false
        email_field.textAlignment = .left
        email_field.topAnchor.constraint(equalTo: label_email.bottomAnchor, constant: 8).isActive = true
        email_field.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        email_field.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        email_field.widthAnchor.constraint(equalToConstant: 250).isActive = true
        email_field.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(label_password)
        label_password.translatesAutoresizingMaskIntoConstraints = false
        label_password.topAnchor.constraint(equalTo: email_field.bottomAnchor, constant: 8).isActive = true
        label_password.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        label_password.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        label_password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label_password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(tx_password)
        tx_password.translatesAutoresizingMaskIntoConstraints = false
        tx_password.topAnchor.constraint(equalTo: label_password.bottomAnchor, constant: 8).isActive = true
        tx_password.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        tx_password.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        tx_password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(label_verifiasi)
        label_verifiasi.translatesAutoresizingMaskIntoConstraints = false
        label_verifiasi.topAnchor.constraint(equalTo: tx_password.bottomAnchor, constant: 8).isActive = true
        label_verifiasi.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        label_verifiasi.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        label_verifiasi.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label_verifiasi.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        view.addSubview(tx_vpassword)
        tx_vpassword.translatesAutoresizingMaskIntoConstraints = false
        tx_vpassword.topAnchor.constraint(equalTo: label_verifiasi.bottomAnchor, constant: 10).isActive = true
        tx_vpassword.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        tx_vpassword.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        tx_vpassword.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_vpassword.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
