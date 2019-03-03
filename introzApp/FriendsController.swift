//
//  FriendsController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 07/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

let Fcell = "friendCell"

class FriendsController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    var friends = [Friends]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        print("----------------friend cell -------------------")
        navigationItem.title = "Friend"
        let textAttributeBold = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white] 
        navigationController?.navigationBar.titleTextAttributes = textAttributeBold
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        collectionView?.register(FriendCell.self, forCellWithReuseIdentifier: Fcell)
        collectionView?.alwaysBounceVertical = true
    }
    
    func setupView(){
        var postBay = Friends()
        postBay.name = "Bay roy"
        postBay.name_image = "markzukerberg"
        postBay.num_totaltemansama = "300k friends"
        
        var postJey = Friends()
        postJey.name = "Jey Bagyo"
        postJey.name_image = "billgates"
        postJey.num_totaltemansama = "30000k friends"
        
        var oliverSykes = Friends()
        oliverSykes.name = "Oliver Sykes"
        oliverSykes.name_image = "oliverSykes"
        oliverSykes.num_totaltemansama = "300k friends"
        
        var stevenjobs = Friends()
        stevenjobs.name = "Steven Jobs"
        stevenjobs.name_image = "steven_jobs"
        stevenjobs.num_totaltemansama = "100.00.000k friends"
        
        var jakma = Friends()
        jakma.name = "Jak Ma"
        jakma.name_image = "jackma"
        jakma.num_totaltemansama = "500.000.000 friends"
        
        friends.append(postBay)
        friends.append(postJey)
        friends.append(oliverSykes)
        friends.append(stevenjobs)
        friends.append(jakma)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friends.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: Fcell, for: indexPath) as! FriendCell
//        if let name c= friends[indexPath.item].name{
//            cell.label_name.text = name
//        }
//
        cell.friendpost = friends[indexPath.item] 
        cell.friendController = self
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 80) 
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    func animate(){
        
    }
}
