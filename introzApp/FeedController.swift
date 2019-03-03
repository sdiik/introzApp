//
//  FeedController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 30/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit


let cellId = "cellId"

class FeedController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
        var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let memoryCapacity = 500 * 1024 * 1024
        let diskCapacity = 500 * 1024 * 1234
        let uCache = URLCache(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity, diskPath: "MyDiskPath")
        URLCache.shared = uCache
        
        var postMark = Post()
        postMark.name = "Mark Zuckerberg"
        postMark.statusText = "Meanwhile, Best turned to the dark side"
        postMark.name_imageprofile = "markzukerberg"
        postMark.name_imageStatus = "https://upload.wikimedia.org/wikipedia/commons/c/c4/Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg"
        postMark.numLikes = "1000k"
        postMark.numComments = "40k"
        postMark.location = "Harvard Ust"
        postMark.date = "10 Dec 19"

        var postSteve = Post()
        postSteve.name = "Steven Jobs"
        postSteve.statusText = "Design is not just what it looks and feel like. Design is how it works.\n\n Being the richest man in the cemetery doesn't  matter to me. Going to bed at night saying we've done something wonderful, that's what matter to me. \n\n Sometimes when you innovate, you make mistakes. It is best to admit them quickly, and get on with improving your innovations."
        postSteve.name_imageprofile = "steven_jobs"
        postSteve.name_imageStatus = "https://s8096.pcdn.co/wp-content/uploads/2015/01/Bill-Gates.jpg"
        postSteve.numLikes = "500k"
        postSteve.numComments = "5k"
        postSteve.location = "New York City"
        postSteve.date = "07 Maret 19"

        var postBillgates = Post()
        postBillgates.name = "Bill Gates"
        postBillgates.statusText = "Live as if you to die tomorrow, learn  as if  you were to live  forever. \n the  weak can never  forgive. Forgiveness is the  attribute  of the strong. \n Happiness is when what  you think, what you say, and what you do are  in harmony."
        postBillgates.name_imageprofile = "billgates"
        postBillgates.name_imageStatus = "https://upload.wikimedia.org/wikipedia/commons/a/a2/Steve_Jobs_and_Bill_Gates_%28522695099%29.jpg"
        postBillgates.numLikes = "700k"
        postBillgates.numComments = "20k"
        postBillgates.location = "San Frascisco"
        postBillgates.date = "17 Agust 19"

        posts.append(postMark)
        posts.append(postSteve)
        posts.append(postBillgates)
        
        navigationItem.title = "Bodybook"
        let textAttributeBold = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white]
        //let textAttribute = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributeBold
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        collectionView?.register(FeedCell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.alwaysBounceVertical = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FeedCell
//        if let name = posts[indexPath.item].name{
//            cell.name_label.text = name
//        }
        cell.post = posts[indexPath.item]
        cell.feedController = self
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if let statusText = posts[indexPath.item].statusText{
            let rect = NSString(string: statusText).boundingRect(with: CGSize(width: view.frame.width, height: 1000), options: NSStringDrawingOptions.usesFontLeading.union(NSStringDrawingOptions.usesLineFragmentOrigin), attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)], context: nil)
            
            let knowheight: CGFloat = 8 + 44 + 4 + 4 + 200 + 8 + 24 + 8 + 44
        
        return CGSize(width: view.frame.width, height: rect.height + knowheight + 170)
            
        }
        return CGSize(width: view.frame.width, height: 500)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    let zoomImageView = UIImageView()
    let blackBackgroundView = UIView()
    let navBarCoverBar = UIView()
    var statusImageView: UIImageView?
    let tabBarCoverBar = UIView()
    
    func animateImageView(statusImageView: UIImageView){
        self.statusImageView = statusImageView
        if  let startingFrame = statusImageView.superview?.convert(statusImageView.frame, to: nil){
            statusImageView.alpha = 0
            
            blackBackgroundView.frame = self.view.frame
            blackBackgroundView.backgroundColor = .black
            blackBackgroundView.alpha = 0
            view.addSubview(blackBackgroundView)
            
            navBarCoverBar.frame = CGRect(x: 0, y: 0, width: 1000, height: 20 + 70)
            navBarCoverBar.backgroundColor = .black
            navBarCoverBar.alpha = 0
            
            if let keyWindow = UIApplication.shared.keyWindow{
                keyWindow.addSubview(navBarCoverBar)
                
                tabBarCoverBar.frame = CGRect(x: 0, y: keyWindow.frame.height - 85, width: 1000, height: 85)
                tabBarCoverBar.backgroundColor = .black
                tabBarCoverBar.alpha = 0
                
                keyWindow.addSubview(tabBarCoverBar)
            }
            
            zoomImageView.backgroundColor = .red
            zoomImageView.frame = startingFrame
            zoomImageView.isUserInteractionEnabled = true
            zoomImageView.image = statusImageView.image
            zoomImageView.contentMode = .scaleAspectFill
            zoomImageView.clipsToBounds = true
            view.addSubview(zoomImageView)
            
            zoomImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(zoomout)))
            
            UIView.animate(withDuration: 0.75) {
                let height = (self.view.frame.width/startingFrame.width)*startingFrame.height
                let y = self.view.frame.height/2-height/2
                self.zoomImageView.frame  = CGRect(x: 0, y: y, width: self.view.frame.width, height: height)
                self.blackBackgroundView.alpha = 1
                self.navBarCoverBar.alpha = 1
                self.tabBarCoverBar.alpha = 1
            }
        }
    }
    
    @objc func zoomout(){
        if let startingFrame = statusImageView!.superview?.convert(statusImageView!.frame, to: nil){
            UIView.animate(withDuration: 0.75, animations: {
                self.zoomImageView.frame = startingFrame
                self.blackBackgroundView.alpha = 0
            }) { (true) in
                self.zoomImageView.removeFromSuperview()
                self.blackBackgroundView.removeFromSuperview()
                self.navBarCoverBar.removeFromSuperview()
                self.statusImageView?.alpha = 1
                self.tabBarCoverBar.removeFromSuperview()
            }
        }
    }
    
}


