//
//  DetailNews.swift
//  introzApp
//
//  Created by ahmad shiddiq on 30/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class DetailNews : UIViewController{
    
    let imageNews: UIImageView = {
        var imageNews  = UIImageView()
        imageNews.translatesAutoresizingMaskIntoConstraints = false
        imageNews.image =  UIImage(named: "jackma")
        imageNews.contentMode = .scaleAspectFit
        return imageNews
    }()
    
    let titleDetail: UILabel = {
        var titleDetail = UILabel()
        titleDetail.text = "Detail News"
        titleDetail.font = UIFont.boldSystemFont(ofSize: 14)
        titleDetail.translatesAutoresizingMaskIntoConstraints = false
        return titleDetail
    }()
    
    let keteranganews:  UILabel = {
        var keteranganNews = UILabel()
        keteranganNews.text = "Just description about this news"
        keteranganNews.font = UIFont.systemFont(ofSize: 12)
        keteranganNews.textColor = .gray
        return keteranganNews
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let leftb = UIButton(type: .system)
//        leftb.setImage(UIImage(named: "back"), for: .normal)
//        leftb.setTitle("Back", for: .normal)
//        leftb.sizeToFit()
//        leftb.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
//
//        navigationItem.title = "Detail News"
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: leftb)
        setupView()
    }
    
    
    func setupView(){
        view.backgroundColor = .white
        view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        view.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        view.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        let verticalLayout = UIStackView(arrangedSubviews: [titleDetail, keteranganews])
        verticalLayout.axis = .vertical
        verticalLayout.translatesAutoresizingMaskIntoConstraints = false
        
        titleDetail.translatesAutoresizingMaskIntoConstraints = false
        keteranganews.translatesAutoresizingMaskIntoConstraints = false
        
        
//        view.addSubview(imageNews)
//        imageNews.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        imageNews.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
//        imageNews.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
//        imageNews.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        
        
    }
    
    func setupAction(){
        
    }
}
