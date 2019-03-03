//
//  RegisterController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 27/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit
class RegisterController : UIViewController {
    
    private var datePicker : UIDatePicker?
    var selectorPriority: String?
    var priorityTypes = ["Male","Female"]
    var switchstatus: String?
 
//    lazy var scrollView: UIScrollView = {
//        let viewScroll = UIScrollView()
//        viewScroll.translatesAutoresizingMaskIntoConstraints = false
//        viewScroll.layoutIfNeeded()
//        //viewScroll.contentSize.height = 2000
//        viewScroll.backgroundColor = .white
//        viewScroll.contentOffset.x = 0
//        return viewScroll
//    }()
    
    private let lb_title : UILabel = {
       var lbTitle = UILabel(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        lbTitle.text = "Let's register, to get information about children and what is best for our children."
        lbTitle.font = UIFont.boldSystemFont(ofSize: 14)
        lbTitle.textAlignment = .center
        lbTitle.numberOfLines = 0
        return lbTitle
    }()
    
    private let tx_username : UITextField = {
        var txUsername = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txUsername.placeholder = "Username"
        txUsername.textAlignment = .center
        txUsername.keyboardType = UIKeyboardType.alphabet
        txUsername.font = UIFont.systemFont(ofSize: 14)
        txUsername.borderStyle = .roundedRect
        txUsername.backgroundColor = .white
        return txUsername
    }()
    
    private let tx_email: UITextField = {
        let txEmail = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txEmail.placeholder = "Email"
        txEmail.textAlignment = .center
        txEmail.keyboardType = UIKeyboardType.emailAddress
        txEmail.font = UIFont.systemFont(ofSize: 14)
        txEmail.borderStyle = .roundedRect
        txEmail.backgroundColor = .white
        return txEmail
    }()
    
    private let tx_password : UITextField = {
        let txPassword = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txPassword.placeholder = "Password"
        txPassword.textAlignment = .center
        txPassword.keyboardType = UIKeyboardType.numberPad
        txPassword.isSecureTextEntry = true
        txPassword.font = UIFont.systemFont(ofSize: 14)
        txPassword.borderStyle = .roundedRect
        txPassword.backgroundColor = .white
        return txPassword
    }()
    
    private let tx_mothername : UITextField = {
        var txMothername = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txMothername.placeholder = "Mother Name"
        txMothername.textAlignment = .center
        txMothername.keyboardType = UIKeyboardType.alphabet
        txMothername.font = UIFont.systemFont(ofSize: 14)
        txMothername.borderStyle = .roundedRect
        txMothername.backgroundColor = .white
        return txMothername
    }()
    
    private let tx_gender : UITextField = {
        let txGender = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txGender.placeholder = "Gender"
        txGender.textAlignment = .center
        txGender.font = UIFont.systemFont(ofSize: 14)
        txGender.borderStyle = .roundedRect
        txGender.backgroundColor = .white
        //txGender.isUserInteractionEnabled = false
        return txGender
    }()
    
    private let tx_tanggallahir : UITextField = {
        let txTanggallahir = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txTanggallahir.placeholder = "Tanggal Lahir"
        txTanggallahir.textAlignment = .center
        txTanggallahir.font = UIFont.systemFont(ofSize: 14)
        txTanggallahir.borderStyle = .roundedRect
        txTanggallahir.backgroundColor = .white
        //txTanggallahir.isUserInteractionEnabled = false
        return txTanggallahir
    }()
    
    private let tx_alamat : UITextField = {
       let txAlamat = UITextField(frame: CGRect(x: 20, y: 100, width: 300, height: 40))
        txAlamat.placeholder = "Alamat"
        txAlamat.textAlignment = .center
        txAlamat.font = UIFont.systemFont(ofSize: 14)
        txAlamat.borderStyle = .roundedRect
        txAlamat.backgroundColor = .white
        return txAlamat
    }()
    
    private let switch_register : UISwitch = {
        let switchRegister = UISwitch()
        return switchRegister
    }()
    
    private let ket_switch : UILabel = {
        let ketSwitch = UILabel()
        ketSwitch.numberOfLines = 0
        ketSwitch.text = "Please switch on if you angree with you understand. thanks"
        ketSwitch.font = UIFont.systemFont(ofSize: 12)
        return ketSwitch
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let leftb = UIButton(type: .system)
        leftb.setImage(UIImage(named: "back"), for: .normal)
        leftb.setTitle("Back", for: .normal)
        leftb.sizeToFit()
        leftb.addTarget(self, action: #selector(actionLogin), for: .touchUpInside)
        
        let rightb = UIButton(type: .system)
         rightb.setTitle("Done", for: .normal)
        rightb.sizeToFit()
        
        rightb.addTarget(self, action: #selector(actionRegister), for: .touchUpInside)
        navigationItem.title = "Register"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: rightb)
        
        setupView()
        actionButton()
        createPickerGender()
        dissmissPickerView()
    }
    
    func actionButton(){
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(RegisterController.dateChange(datePicker:)), for: .valueChanged)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(RegisterController.viewTapped(gestureRecognizer:)))
        view.addGestureRecognizer(tapGesture)
        tx_tanggallahir.inputView = datePicker
        
        switch_register.addTarget(self, action: #selector(switchChange), for: .valueChanged)
    }
    
    @objc func actionLogin(){
        //self.present(SwippingController.collectionView(<#T##SwippingController#>), animated: true, completion:  nil)
    self.dismiss(animated: true)
    }
    
    @objc func actionRegister(){
        let svc = SettingTwoController()
        self.present(svc, animated: true, completion: nil)
    }
    
    @objc func dateChange(datePicker : UIDatePicker){
        let dateFormatted = DateFormatter()
        dateFormatted.dateFormat = "MM/dd/yyyy"
        tx_tanggallahir.text = dateFormatted.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
    @objc func switchChange(myswitch : UISwitch){
        if  myswitch.isOn{
            print("--------switch on ------------")
            switchstatus = "switchon"
        }else{
            print("--------switch off ------------")
            switchstatus = "switchoff"
        }
    }
    
    func setupView(){
        view.backgroundColor = .white
//        view.addSubview(scrollView)
//        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//
       let formStackView = UIStackView()
        formStackView.backgroundColor = .white
//        scrollView.addSubview(formStackView)
        view.addSubview(formStackView)
        formStackView.translatesAutoresizingMaskIntoConstraints = false
        formStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        formStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        formStackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        formStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        formStackView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        formStackView.addSubview(lb_title)
        lb_title.translatesAutoresizingMaskIntoConstraints = false
        lb_title.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        lb_title.topAnchor.constraint(equalTo: formStackView.safeAreaLayoutGuide.topAnchor, constant: 24).isActive = true
        lb_title.leftAnchor.constraint(equalTo: formStackView.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        lb_title.rightAnchor.constraint(equalTo: formStackView.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true

        formStackView.addSubview(tx_username)
        tx_username.translatesAutoresizingMaskIntoConstraints = false
        tx_username.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_username.topAnchor.constraint(equalTo: lb_title.bottomAnchor, constant: 24).isActive = true
        tx_username.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_username.heightAnchor.constraint(equalToConstant: 40).isActive = true

        formStackView.addSubview(tx_email)
        tx_email.translatesAutoresizingMaskIntoConstraints = false
        tx_email.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_email.topAnchor.constraint(equalTo: tx_username.bottomAnchor, constant : 8).isActive = true
        tx_email.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_email.heightAnchor.constraint(equalToConstant: 40).isActive = true

        formStackView.addSubview(tx_password)
        tx_password.translatesAutoresizingMaskIntoConstraints = false
        tx_password.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_password.topAnchor.constraint(equalTo: tx_email.bottomAnchor, constant : 8).isActive = true
        tx_password.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_password.heightAnchor.constraint(equalToConstant: 40).isActive = true

        formStackView.addSubview(tx_mothername)
        tx_mothername.translatesAutoresizingMaskIntoConstraints = false
        tx_mothername.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_mothername.topAnchor.constraint(equalTo: tx_password.bottomAnchor, constant : 8).isActive = true
        tx_mothername.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_mothername.heightAnchor.constraint(equalToConstant: 40).isActive = true

        formStackView.addSubview(tx_gender)
        tx_gender.translatesAutoresizingMaskIntoConstraints = false
        tx_gender.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_gender.topAnchor.constraint(equalTo: tx_mothername.bottomAnchor, constant : 8).isActive = true
        tx_gender.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_gender.heightAnchor.constraint(equalToConstant: 40).isActive = true

        formStackView.addSubview(tx_tanggallahir)
        tx_tanggallahir.translatesAutoresizingMaskIntoConstraints = false
        tx_tanggallahir.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_tanggallahir.topAnchor.constraint(equalTo: tx_gender.bottomAnchor, constant : 8).isActive = true
        tx_tanggallahir.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_tanggallahir.heightAnchor.constraint(equalToConstant: 40).isActive = true

        formStackView.addSubview(tx_alamat)
        tx_alamat.translatesAutoresizingMaskIntoConstraints = false
        tx_alamat.centerXAnchor.constraint(equalTo: formStackView.centerXAnchor).isActive = true
        tx_alamat.topAnchor.constraint(equalTo: tx_tanggallahir.bottomAnchor, constant : 8).isActive = true
        tx_alamat.widthAnchor.constraint(equalToConstant: 250).isActive = true
        tx_alamat.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let layoutbutton = UIStackView(arrangedSubviews: [switch_register , ket_switch])
        formStackView.addSubview(layoutbutton)
        layoutbutton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        layoutbutton.translatesAutoresizingMaskIntoConstraints = false
        layoutbutton.distribution = .fillEqually
        layoutbutton.axis = .horizontal
        layoutbutton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        layoutbutton.topAnchor.constraint(equalTo: tx_alamat.bottomAnchor, constant: 8).isActive = true
        
        switch_register.translatesAutoresizingMaskIntoConstraints = false
        switch_register.widthAnchor.constraint(equalTo: layoutbutton.widthAnchor, multiplier: 0.2).isActive = true
        
        ket_switch.translatesAutoresizingMaskIntoConstraints = false
        ket_switch.widthAnchor.constraint(equalTo: layoutbutton.widthAnchor, multiplier: 0.7).isActive = true
        
        
    }
    
    func createPickerGender(){
        let pickerView = UIPickerView()
        pickerView.delegate = self
        tx_gender.inputView = pickerView
    }
    
    func dissmissPickerView(){
        let tollbar = UIToolbar()
        tollbar.barStyle = .default
        tollbar.isTranslucent = true
        //tollbar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        tollbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(self.dissmissKeyboard))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "cancel", style: .plain, target: self, action: nil)
        
        tollbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        tollbar.tintColor = .red
        tollbar.isUserInteractionEnabled = true
    }
    
    @objc func dissmissKeyboard(){
        view.endEditing(true)}
    
    
}

extension RegisterController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return priorityTypes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return priorityTypes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectorPriority =  priorityTypes[row]
        tx_gender.text = selectorPriority
    }
    
     
    
    
}







