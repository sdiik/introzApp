//
//  ViewController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 23/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

extension UIColor{
    static var pinkSelect = UIColor(red: 232/255, green: 68/255, blue: 135/255, alpha: 1)
    static var pinknoSelect = UIColor(red: 249/255, green: 207/255, blue: 224/255, alpha: 1)
}

class ViewController: UIViewController {
    
    var data  : String?

    let bearImageVIew: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "tiga"))
        //this enable autolayout for our imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and game", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSMutableAttributedString(string: "\n\n\nAre you ready for to loads and loads of funs? Don't wait any longer! We hope to see you in our stores soon", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        
        //textView.text = "Join us today in our fun and games!"
        //textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    private let previewButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.pinkSelect, for: .normal)
        return button
    }()
    
    private let pageController: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.currentPageIndicatorTintColor = .pinkSelect
        pc.pageIndicatorTintColor = .pinknoSelect
        return pc
    }()
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.backgroundColor = .yellow
        //view.addSubview(bearImageVIew)
        view.addSubview(descriptionTextView)
        view.backgroundColor = .white
        setupBottomControlers()
        setupLayout()
    }
    
    fileprivate func setupBottomControlers(){
        //view.addSubview(previewButton)
        //previewButton.backgroundColor = .red
        //previewButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        
//        let yellowView = UIView()
//        yellowView.backgroundColor = .yellow
//        let greenView = UIView()
//        greenView.backgroundColor = .green
//        let blueView = UIView()
//        blueView.backgroundColor = .blue
        
        let ButtonControlStackView = UIStackView(arrangedSubviews: [previewButton, pageController, nextButton])
        view.addSubview(ButtonControlStackView)
        ButtonControlStackView.translatesAutoresizingMaskIntoConstraints = false
        ButtonControlStackView.distribution = .fillEqually
        ButtonControlStackView.axis = .horizontal
        
        NSLayoutConstraint.activate([
            //previewButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            ButtonControlStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ButtonControlStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ButtonControlStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            ButtonControlStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    private func setupLayout(){
        let topImageContainerView = UIView()
        //topImageContainerView.backgroundColor = .blue
        view.addSubview(topImageContainerView)
        
        //topImageContainerView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        topImageContainerView.addSubview(bearImageVIew)
        
        bearImageVIew.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bearImageVIew.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bearImageVIew.heightAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageVIew.widthAnchor.constraint(equalToConstant: 200).isActive = true
    
//      bearImageVIew.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//      bearImageVIew.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
//      bearImageVIew.heightAnchor.constraint(equalToConstant: 200).isActive = true
//      bearImageVIew.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant : -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
    




