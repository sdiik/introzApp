//
//  FeedCell.swift
//  introzApp
//
//  Created by ahmad shiddiq on 30/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

var imageCache = [String : UIImage]()

class FeedCell: UICollectionViewCell{
    var feedController: FeedController?

    @objc func animate(){
        feedController?.animateImageView(statusImageView: image_status)
    }
    
    var post: Post? {
        didSet{
            if let name = post?.name, let tx_date = post?.date, let tx_location = post?.location{
                let attributedText = NSMutableAttributedString(string: name, attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.boldSystemFont(ofSize: 18)])
                attributedText.append(NSAttributedString(string:"\n"+tx_date+" • "+tx_location+" ", attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.systemFont(ofSize: 14),NSAttributedString.Key.foregroundColor: UIColor.gray]))
                
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = 4
                
                let attachment = NSTextAttachment()
                attachment.image = UIImage(named: "eye")
                attachment.bounds = CGRect(x: 0, y: -3, width: 10, height: 14)
                attributedText.append(NSAttributedString(attachment: attachment))
                name_label.attributedText = attributedText
            }
            
            if let keterangan = post?.statusText{
                ket_label.text = keterangan
            }
            
            if let image_profil = post?.name_imageprofile{
                image_ket.image = UIImage(named: image_profil)
            }
            
            //image_status.image = nil
            if let img_status = post?.name_imageStatus{
                //image_status.image = UIImage(named: img_status)
                if let imge = imageCache[img_status]{
                    image_status.image = imge
                }else{
                    guard let url = URL(string: img_status) else{
                        print("Error: cannot create URL")
                        return
                    }
                    let urlRequest = URLRequest(url: url)
                    //set up the session
                    //let config = URLSessionConfiguration.default
                    let session = URLSession(configuration: .default)
                    self.activityIndicator.startAnimating()
                    //make the request
                    let task = session.dataTask(with: urlRequest) {
                        (data, response, error) in
                        guard error == nil else{
                            print(" ------- ERROR calling GET -----------")
                            print("-------- Error !! ---------")
                            return
                        }
                        
                        
                        DispatchQueue.main.async {
                            self.image_status.image = UIImage(data: data!)
                            self.activityIndicator.stopAnimating()
                            imageCache[img_status] = UIImage(data: data!)
                        }
                    }
                    task.resume()
                }
                
              
            }
            
            if let lbel_like = post?.numLikes, let lbel_comment = post?.numComments{
                likesCommentLabel.text = lbel_like+" Likes  "+lbel_comment+" Comments"
            }
        }
    }
    let activityIndicator: UIActivityIndicatorView = {
       var aIndicator  = UIActivityIndicatorView()
        aIndicator.style = .gray
        aIndicator.frame = CGRect(x: 0, y: 0, width: 46, height: 46)
        aIndicator.hidesWhenStopped = true
        return aIndicator
    }()
    
    let name_label: UILabel = {
       var namaLabel = UILabel()
        namaLabel.numberOfLines = 2
        
        let attributedText = NSMutableAttributedString(string: "Mark Zuckeberg", attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\nDecember 18 • SanFracisco ", attributes: [kCTFontAttributeName as NSAttributedString.Key: UIFont.systemFont(ofSize: 14),   NSAttributedString.Key.foregroundColor: UIColor.gray]))
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        
        attributedText.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: attributedText.string.characters.count))
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "eye")
        attachment.bounds = CGRect(x: 0, y: -3, width: 10, height: 14)
        attributedText.append(NSAttributedString(attachment: attachment))
        namaLabel.attributedText = attributedText
        namaLabel.textAlignment = .left
        return namaLabel
    }()
    
    let image_ket: UIImageView = {
        var imageKet =  UIImageView()
        imageKet.image = UIImage(named: "dua")
        imageKet.contentMode = .scaleAspectFit
        return imageKet
    }()
    
    let ket_label: UILabel = {
        var ketLabel = UILabel()
        ketLabel.numberOfLines = 0
        ketLabel.text = "Meanwhile, Beast turned to the dark side"
        ketLabel.font = UIFont.systemFont(ofSize: 14)
        ketLabel.textAlignment = .left
        
        return ketLabel
    }()
    
    let image_status: UIImageView = {
        var imageStatus = UIImageView()
       // imageStatus.image = UIImage(named: "tiga")
       // imageStatus.backgroundColor = .red
        imageStatus.contentMode = .scaleAspectFill
        imageStatus.layer.masksToBounds = true
        imageStatus.isUserInteractionEnabled = true
        imageStatus.layer.cornerRadius = 5
        return imageStatus
    }()
    
    let likesCommentLabel : UILabel = {
        var likeComment = UILabel()
        likeComment.text = "488 Likes   10.7k Comments"
        likeComment.font = UIFont.systemFont(ofSize: 14)
        likeComment.textColor = UIColor(red: 155/255, green: 161/255, blue: 175/255, alpha: 1)
        return likeComment
    }()
    
    let devideLineView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 155/255, green: 161/255, blue: 175/255, alpha: 1)
        return view
    }()
    
    let img_like: UIButton = {
        var imgLike = UIButton()
        imgLike.setTitle("Like", for: .normal)
        imgLike.setTitleColor(UIColor(red: 155/255, green: 161/255, blue: 175/255, alpha: 1), for: .normal)
        imgLike.setImage(UIImage(named: "like"), for: .normal)
        imgLike.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
        imgLike.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return imgLike
    }()
    
    let img_commant: UIButton = {
        var imgComment =  UIButton()
        imgComment.setTitle("Comment", for: .normal)
        imgComment.setTitleColor(UIColor(red: 155/255, green: 161/255, blue: 175/255, alpha: 1), for: .normal)
        imgComment.setImage(UIImage(named: "comment"), for: .normal)
        imgComment.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
        imgComment.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return imgComment
    }()
    
    let img_shared: UIButton = {
        var imgShared = UIButton()
        imgShared.setTitle("Shared", for: .normal)
        imgShared.setTitleColor(UIColor(red: 155/255, green: 161/255, blue: 175/255, alpha: 1), for: .normal)
        imgShared.setImage(UIImage(named: "share"), for: .normal)
        imgShared.titleEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 0)
        imgShared.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return imgShared
    }()
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        setupView()
    }
    
    func setupView(){
        backgroundColor = UIColor.white
        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
 
        let layoubutton = UIStackView(arrangedSubviews: [image_ket, name_label])
        addSubview(layoubutton)
        layoubutton.translatesAutoresizingMaskIntoConstraints = false
        layoubutton.distribution = .fillEqually
        layoubutton.axis = .horizontal
        layoubutton.widthAnchor.constraint(equalToConstant: 250).isActive = true
       
        image_ket.translatesAutoresizingMaskIntoConstraints = false
        image_ket.widthAnchor.constraint(equalTo: layoubutton.widthAnchor, multiplier: 0.25).isActive = true
        image_ket.heightAnchor.constraint(equalTo: layoubutton.widthAnchor, multiplier: 0.25).isActive = true
        image_ket.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        image_ket.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8).isActive = true
        image_ket.rightAnchor.constraint(equalTo: name_label.leftAnchor, constant: -8).isActive = true
        
        name_label.translatesAutoresizingMaskIntoConstraints = false
        name_label.widthAnchor.constraint(equalTo: layoubutton.widthAnchor, multiplier: 0.8).isActive = true
        
        addSubview(ket_label)
        ket_label.translatesAutoresizingMaskIntoConstraints = false
        ket_label.topAnchor.constraint(equalTo: layoubutton.bottomAnchor, constant: 8).isActive = true
        ket_label.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        ket_label.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -8).isActive = true
        
        let layoutaction = UIStackView(arrangedSubviews: [img_like, img_commant, img_shared])
        addSubview(layoutaction)
        layoutaction.translatesAutoresizingMaskIntoConstraints = false
        layoutaction.distribution = .fillEqually
        layoutaction.axis = .horizontal
        layoutaction.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        layoutaction.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        layoutaction.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        
        img_like.translatesAutoresizingMaskIntoConstraints = false
        img_commant.translatesAutoresizingMaskIntoConstraints = false
        img_shared.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(devideLineView)
        devideLineView.translatesAutoresizingMaskIntoConstraints = false
        devideLineView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        devideLineView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        devideLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        devideLineView.bottomAnchor.constraint(equalTo: layoutaction.topAnchor, constant: -8).isActive = true
        
        addSubview(likesCommentLabel) 
        likesCommentLabel.translatesAutoresizingMaskIntoConstraints = false
        likesCommentLabel.bottomAnchor.constraint(equalTo: devideLineView.topAnchor, constant: -8).isActive = true
        likesCommentLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 8).isActive = true
        likesCommentLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -8).isActive = true
        likesCommentLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        addSubview(image_status)
        image_status.translatesAutoresizingMaskIntoConstraints = false
        
        image_status.heightAnchor.constraint(equalToConstant: 300).isActive = true
        image_status.topAnchor.constraint(equalTo: ket_label.bottomAnchor, constant: 4).isActive = true
        image_status.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        image_status.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        image_status.bottomAnchor.constraint(equalTo: likesCommentLabel.topAnchor, constant: -8).isActive = true
        
        image_status.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        
        image_status.addSubview(activityIndicator)
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        activityIndicator.centerXAnchor.constraint(equalTo: image_status.centerXAnchor).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: image_status.centerYAnchor).isActive = true
        activityIndicator.heightAnchor.constraint(equalToConstant: 50).isActive = true
        activityIndicator.widthAnchor.constraint(equalToConstant: 50).isActive = true
 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


