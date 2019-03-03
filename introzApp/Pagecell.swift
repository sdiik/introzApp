//
//  Pagecell.swift
//  introzApp
//
//  Created by ahmad shiddiq on 25/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class Pagecell : UICollectionViewCell{

    var page : Page?{
        didSet{
            guard let unwrappedPage = page else{ return}
            //print(page?.ImageName)
            bearImageVIew.image = UIImage(named: unwrappedPage.ImageName)
            
            let attributedText = NSMutableAttributedString(string: unwrappedPage.TextDescript, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
            attributedText.append(NSMutableAttributedString(string: "\n\n\n\(unwrappedPage.bodyDescript)", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.gray]))
            
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
        }
    }

    private let bearImageVIew: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "tiga"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Join us today in our fun and game", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSMutableAttributedString(string: "\n\n\nAre you ready for to loads and loads of funs? Don't wait any longer! We hope to see you in our stores soon", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        textView.attributedText = attributedText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor =  .white
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout(){
        let topImageContainerView = UIView()
        addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo:  heightAnchor, multiplier: 0.5).isActive = true
        topImageContainerView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        topImageContainerView.rightAnchor.constraint(equalTo:  rightAnchor).isActive = true
        topImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        topImageContainerView.addSubview(bearImageVIew)
        
        bearImageVIew.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bearImageVIew.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bearImageVIew.heightAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageVIew.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor, constant : -24).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
