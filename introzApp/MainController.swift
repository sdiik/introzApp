//
//  MainController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 29/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class MainController : UIViewController{
    
    private let lb_peoplesaldo: UITextView = {
        let lbPeoplesaldo = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Ahmad Shiddiq", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)])
        attributedText.append(NSMutableAttributedString(string: "Rp.10.000.000", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.gray]))
        lbPeoplesaldo.attributedText = attributedText
        lbPeoplesaldo.translatesAutoresizingMaskIntoConstraints = false
        lbPeoplesaldo.textAlignment = .left
        lbPeoplesaldo.isEditable = false
        lbPeoplesaldo.isScrollEnabled = false
        return lbPeoplesaldo
    }()
    
    private let img_profil: UIImageView = {
        let imgProfil = UIImageView()
        imgProfil.layer.borderWidth = 0.5
        imgProfil.layer.cornerRadius = 20
        imgProfil.contentMode = .scaleAspectFit
        return imgProfil
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        
    }
    
    
}
