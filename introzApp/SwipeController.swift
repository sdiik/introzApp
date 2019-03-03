//
//  SwipeController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 24/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//


import UIKit

class SwipeController : UICollectionViewController {
    
//    var pagedata = [Page]()
//
//    let imageNames=["satu","dua", "tiga"]
//    let headerStrings = ["Join us today in our fun and games!","Subscrible  anf get coupons on our daily event",
//                         "VIP member special  services"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .green
       // collectionView?.register(Pagecell.self, forCellWithReuseIdentifier: "cellId")
        //collectionView?.isPagingEnabled = true
        //
    }
//
//    func valuepagedata(){
//        pagedata.append(Page(ImageName:"satu",TextDescript:"Join us to day in our fun and games!"))
//        pagedata.append(Page(ImageName: "dua", TextDescript: "Subscrible and get coupons on our daily event"))
//        pagedata.append(Page(ImageName: "tiga", TextDescript: "VIP member special services"))
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }

//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return pagedata.count
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! Pagecell
//        //cell.backgroundColor = .green
//        //cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
//        //let NameImage = imageNames[indexPath.item]
//        let pages = pagedata[indexPath.item]
//        //cell.page = pages
//        cell.bearImageVIew.image = UIImage(named: pages.ImageName)
//        cell.descriptionTextView.text =  pages.TextDescript
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.width, height: view.frame.height)
//    }
    
}
