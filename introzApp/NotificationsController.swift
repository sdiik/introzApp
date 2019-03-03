//
//  NotificationsController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 17/12/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

let notifCell = "notifcell"
class NotificationsController : UICollectionViewController, UICollectionViewDelegateFlowLayout{
    var notification = [Notifications]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewData()
        
        navigationItem.title = "Notification"
        let attributTextBold = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = attributTextBold
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        collectionView?.register(NotificationCell.self, forCellWithReuseIdentifier: notifCell)
        collectionView?.alwaysBounceVertical = true
    }
    
    func setupViewData(){
        var notifsatu = Notifications()
        notifsatu.date = "12/12/2018"
        notifsatu.time = "12:00"
        notifsatu.name_pengirim = "Bill gates"
        notifsatu.title = "Take care of your child"
        notifsatu.keterangan = "be careful, kidnapping often occurs in the New York area"
        
        var notifdua = Notifications()
        notifdua.date = "13/02/2018"
        notifdua.time = "03:32"
        notifdua.name_pengirim = "Steven Jobs" 
        notifdua.title = "Dengue attacks children"
        notifdua.keterangan = "Keep your home in the rain when malaria is rife"
        
        var notiftiga = Notifications()
        notiftiga.date = "11/02/2018"
        notiftiga.time = "02:32"
        notiftiga.name_pengirim = "Olyver Sykes"
        notiftiga.title = "vegetables and fruit for children's"
        notiftiga.keterangan = "Consume vegetables and fruits for children's intelligence"
        
        var notifempat = Notifications()
        notifempat.date = "18/12/2018"
        notifempat.time = "13:40"
        notifempat.name_pengirim = "Mark Zurkerberg"
        notifempat.title = "Danger of nightmares in children"
        notifempat.keterangan = "Nightmares due to seeing horror films too often and often hearing negative things"
        
        notification.append(notifsatu)
        notification.append(notifdua)
        notification.append(notiftiga)
        notification.append(notifempat)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return notification.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: notifCell, for: indexPath) as! NotificationCell
        cell.ntoficationcontroller = self
        cell.notificationPost = notification[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: view.frame.width, height: 70)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        collectionView.collectionViewLayout.invalidateLayout()
    }
}
