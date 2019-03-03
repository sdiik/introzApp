//
//  DetailNews.swift
//  introzApp
//
//  Created by ahmad shiddiq on 30/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class ChangeProfil: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let label_title: UILabel = {
        var ltitle = UILabel()
        ltitle.numberOfLines = 0
        ltitle.text = "Help you to give information to other people"
        ltitle.font = UIFont.boldSystemFont(ofSize: 16)
        ltitle.textAlignment = .left
        return ltitle
    }()
    
    let label_lastname: UILabel = {
        var llastname = UILabel()
        llastname.numberOfLines = 2
        llastname.text = "Last Username :  \nSteven jobs"
        llastname.textColor = UIColor.gray
        llastname.font = UIFont.italicSystemFont(ofSize: 14)
        llastname.textAlignment = .left
        return llastname
    }()
    
    private let new_username: UITextField = {
        let nusername = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        nusername.placeholder = "New Username"
        nusername.font = UIFont.systemFont(ofSize: 15)
        nusername.borderStyle = .roundedRect
        nusername.backgroundColor = .white
        nusername.keyboardType = UIKeyboardType.alphabet
        return nusername
    }()
    
    let label_lastmotto : UILabel = {
        var lastmotto = UILabel()
        lastmotto.numberOfLines = 0
        lastmotto.text = "Last Motto : \nYour time is limited, so dont  waste it living someone else's life"
        lastmotto.font = UIFont.italicSystemFont(ofSize: 14)
        lastmotto.textColor = UIColor.gray
        lastmotto.textAlignment = .left
        return lastmotto
    }()
    
    let label_newmotto : UITextField = {
        var nmotto = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 100))
        nmotto.placeholder = "New Motto"
        nmotto.keyboardType = UIKeyboardType.alphabet
        nmotto.font = UIFont.systemFont(ofSize: 14)
        nmotto.borderStyle = .roundedRect
        nmotto.backgroundColor = .white
        return nmotto
    }()
    
    let label_lastdate: UILabel = {
        var lastdate = UILabel()
        lastdate.numberOfLines = 2
        lastdate.text = "Last Date : \n18 Agutustus 2000"
        lastdate.font = UIFont.italicSystemFont(ofSize: 14)
        lastdate.textColor = UIColor.gray
        lastdate.textAlignment = .left
        return lastdate
    }()
    
    let tx_newdate : UITextField = {
        var tx_newdate = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        tx_newdate.placeholder = "New Date"
        tx_newdate.keyboardType = UIKeyboardType.numberPad
        tx_newdate.isSecureTextEntry = true
        tx_newdate.font = UIFont.systemFont(ofSize: 14)
        tx_newdate.borderStyle = .roundedRect
        tx_newdate.backgroundColor = .white
        return tx_newdate
    }()
    
    let label_mothername: UILabel = {
        var label_mothername = UILabel()
        label_mothername.numberOfLines = 2
        label_mothername.text = "Last Mother Name : \nSiti Fatimah"
        label_mothername.font = UIFont.italicSystemFont(ofSize: 14)
        label_mothername.textColor = UIColor.gray
        label_mothername.textAlignment = .left
        return label_mothername
    }()
    
    private let new_mothername: UITextField = {
        let nusername = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        nusername.placeholder = "New Mother Name"
        nusername.font = UIFont.systemFont(ofSize: 15)
        nusername.borderStyle = .roundedRect
        nusername.backgroundColor = .white
        nusername.keyboardType = UIKeyboardType.alphabet
        return nusername
    }()
    
    let label_phonenumber: UILabel = {
        var label_phonenumber = UILabel()
        label_phonenumber.numberOfLines = 2
        label_phonenumber.text = "Last Phone Number : \n082331014279"
        label_phonenumber.font = UIFont.italicSystemFont(ofSize: 14)
        label_phonenumber.textColor = UIColor.gray
        label_phonenumber.textAlignment = .left
        return label_phonenumber
    }()
    
    private let new_phonenumber: UITextField = {
        let new_phonenumber = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        new_phonenumber.placeholder = "New Phone Number"
        new_phonenumber.font = UIFont.systemFont(ofSize: 15)
        new_phonenumber.borderStyle = .roundedRect
        new_phonenumber.backgroundColor = .white
        new_phonenumber.keyboardType = UIKeyboardType.phonePad
        return new_phonenumber
    }()
    
    let label_address: UILabel = {
        var label_address = UILabel()
        label_address.numberOfLines = 2
        label_address.text = "Address : \nWaru, Kabupaten sidoarjo, Jawa timur"
        label_address.font = UIFont.italicSystemFont(ofSize: 14)
        label_address.textColor = UIColor.gray
        label_address.textAlignment = .left
        return label_address
    }()
    
    let label_newaddress : UITextField = {
        var label_newaddress = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 100))
        label_newaddress.placeholder = "New Address"
        label_newaddress.keyboardType = UIKeyboardType.alphabet
        label_newaddress.font = UIFont.systemFont(ofSize: 14)
        label_newaddress.borderStyle = .roundedRect
        label_newaddress.backgroundColor = .white
        return label_newaddress
    }()
    
    let label_zipcode: UILabel = {
        var label_zipcode = UILabel()
        label_zipcode.numberOfLines = 2
        label_zipcode.text = "Zip Code : \n674323"
        label_zipcode.font = UIFont.italicSystemFont(ofSize: 14)
        label_zipcode.textColor = UIColor.gray
        label_zipcode.textAlignment = .left
        return label_zipcode
    }()
    
    private let new_zipcode: UITextField = {
        let new_zipcode = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        new_zipcode.placeholder = "New Zip Code"
        new_zipcode.font = UIFont.systemFont(ofSize: 15)
        new_zipcode.borderStyle = .roundedRect
        new_zipcode.backgroundColor = .white
        new_zipcode.keyboardType = UIKeyboardType.phonePad
        return new_zipcode
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
        
        navigationItem.title = "Change Profile"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightb)
        
        setupScrollView()
        setupViews()
    }
    
    @objc func toDismissPass(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func setupScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.isScrollEnabled = true
        
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -200).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
    }
    
    func setupViews(){
        view.backgroundColor = .white
        contentView.addSubview(label_title)
        label_title.translatesAutoresizingMaskIntoConstraints = false
        label_title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24).isActive = true
        label_title.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_title.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(label_lastname)
        label_lastname.translatesAutoresizingMaskIntoConstraints = false
        label_lastname.topAnchor.constraint(equalTo: label_title.bottomAnchor, constant: 16).isActive = true
        label_lastname.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_lastname.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(new_username)
        new_username.translatesAutoresizingMaskIntoConstraints = false
        new_username.textAlignment = .left
        new_username.topAnchor.constraint(equalTo: label_lastname.bottomAnchor, constant: 8).isActive = true
        new_username.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        new_username.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        new_username.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        contentView.addSubview(label_lastmotto)
        label_lastmotto.translatesAutoresizingMaskIntoConstraints = false
        label_lastmotto.topAnchor.constraint(equalTo: new_username.bottomAnchor, constant: 16).isActive = true
        label_lastmotto.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_lastmotto.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(label_newmotto)
        label_newmotto.translatesAutoresizingMaskIntoConstraints = false
        label_newmotto.topAnchor.constraint(equalTo: label_lastmotto.bottomAnchor, constant: 8).isActive = true
        label_newmotto.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_newmotto.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        label_newmotto.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        contentView.addSubview(label_lastdate)
        label_lastdate.translatesAutoresizingMaskIntoConstraints = false
        label_lastdate.topAnchor.constraint(equalTo: label_newmotto.bottomAnchor, constant: 16).isActive = true
        label_lastdate.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_lastdate.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        scrollView.addSubview(tx_newdate)
        tx_newdate.translatesAutoresizingMaskIntoConstraints = false
        tx_newdate.topAnchor.constraint(equalTo: label_lastdate.bottomAnchor, constant: 8).isActive = true
        tx_newdate.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        tx_newdate.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        tx_newdate.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        contentView.addSubview(label_mothername)
        label_mothername.translatesAutoresizingMaskIntoConstraints = false
        label_mothername.topAnchor.constraint(equalTo: tx_newdate.bottomAnchor, constant: 16).isActive = true
        label_mothername.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_mothername.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(new_mothername)
        new_mothername.translatesAutoresizingMaskIntoConstraints = false
        new_mothername.topAnchor.constraint(equalTo: label_mothername.bottomAnchor, constant: 8).isActive = true
        new_mothername.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        new_mothername.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        new_mothername.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        contentView.addSubview(label_phonenumber)
        label_phonenumber.translatesAutoresizingMaskIntoConstraints = false
        label_phonenumber.topAnchor.constraint(equalTo: new_mothername.bottomAnchor, constant: 16).isActive = true
        label_phonenumber.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_phonenumber.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(new_phonenumber)
        new_phonenumber.translatesAutoresizingMaskIntoConstraints = false
        new_phonenumber.topAnchor.constraint(equalTo: label_phonenumber.bottomAnchor, constant: 8).isActive = true
        new_phonenumber.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        new_phonenumber.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        new_phonenumber.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        contentView.addSubview(label_address)
        label_address.translatesAutoresizingMaskIntoConstraints = false
        label_address.topAnchor.constraint(equalTo: new_phonenumber.bottomAnchor, constant: 16).isActive = true
        label_address.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_address.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        label_address.widthAnchor.constraint(equalToConstant: 250).isActive = true
        
        contentView.addSubview(label_newaddress)
        label_newaddress.translatesAutoresizingMaskIntoConstraints = false
        label_newaddress.topAnchor.constraint(equalTo: label_address.bottomAnchor, constant: 8).isActive = true
        label_newaddress.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_newaddress.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        label_newaddress.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        contentView.addSubview(label_zipcode)
        label_zipcode.translatesAutoresizingMaskIntoConstraints = false
        label_zipcode.topAnchor.constraint(equalTo: label_newaddress.bottomAnchor, constant: 16).isActive = true
        label_zipcode.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        label_zipcode.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        
        contentView.addSubview(new_zipcode)
        new_zipcode.translatesAutoresizingMaskIntoConstraints = false
        new_zipcode.topAnchor.constraint(equalTo: label_zipcode.bottomAnchor, constant: 8).isActive = true
        new_zipcode.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 24).isActive = true
        new_zipcode.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -24).isActive = true
        new_zipcode.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
