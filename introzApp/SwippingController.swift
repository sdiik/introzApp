//
//  SwippingController.swift
//  introzApp
//
//  Created by ahmad shiddiq on 26/11/18.
//  Copyright © 2018 ahmad shiddiq. All rights reserved.
//

import UIKit

class SwippingController : UICollectionViewController, UICollectionViewDelegateFlowLayout{
    let cellId = "cellId"
    let celllogin = "cellLogin"
    var ButtonControlStackView = UIStackView()
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: {(_) in
            self.collectionViewLayout.invalidateLayout()
            
            if self.pageController.currentPage == 0{
                self.collectionView?.contentOffset = .zero
            }else{
                let indexPath =  IndexPath(item: self.pageController.currentPage, section: 0)
                self.collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            }
        }){ (_) in
            
        }
    }
    
    var pagedata = [Page]()
    
    private let previewButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(self, action: #selector(handlePrev), for: .touchUpInside)
        return button
    }()
    
    @objc private func handlePrev(){
        let nextIndex = max(pageController.currentPage - 1, 0)
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageController.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0), for: .normal)
        button.addTarget(self, action: #selector(handleNext), for: .touchUpInside)
        return button
    }()
    
    @objc private func handleNext(){
        let nextIndex = min(pageController.currentPage+1, pagedata.count )
        let indexPath = IndexPath(item: nextIndex, section: 0)
        pageController.currentPage = nextIndex
        collectionView?.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        
        if nextIndex > 2{ ButtonControlStackView.isHidden = true
        }else{ ButtonControlStackView.isHidden = false }
    }
    
    private lazy var pageController: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = pagedata.count + 1
        pc.currentPageIndicatorTintColor = UIColor(red: 103/255, green: 65/255, blue: 114/255, alpha: 1.0)
        pc.pageIndicatorTintColor = .pinknoSelect
        return pc
    }()
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        
        let pageNumber = Int(x/view.frame.width)
        pageController.currentPage = pageNumber
        
        //print(x, view.frame.width, x/view.frame.width)
        
        if pageNumber == pagedata.count{
            
            UIView.animate(withDuration: 1){
                self.ButtonControlStackView.isHidden = true
            }
        }else{
            UIView.animate(withDuration: 1){
                self.ButtonControlStackView.isHidden = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        collectionView?.isPagingEnabled = true
        valuepagedata()
        setupBottomControlers()
        registerCells()
    }
    
    fileprivate func registerCells(){
        collectionView?.register(Pagecell.self, forCellWithReuseIdentifier: cellId)
        collectionView?.register(LoginCell.self, forCellWithReuseIdentifier: celllogin)
    }
 
    fileprivate func setupBottomControlers(){
        ButtonControlStackView = UIStackView(arrangedSubviews: [previewButton, pageController, nextButton])
        view.addSubview(ButtonControlStackView)
        ButtonControlStackView.translatesAutoresizingMaskIntoConstraints = false
        ButtonControlStackView.distribution = .fillEqually
        ButtonControlStackView.axis = .horizontal
    
        NSLayoutConstraint.activate([
            ButtonControlStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            ButtonControlStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            ButtonControlStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            ButtonControlStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    func valuepagedata(){
        pagedata.append(Page(ImageName:"satu",TextDescript:"Join us to day in our fun and games!", bodyDescript:" Are you ready for loads and loads of fun? Don't wait any longed. We hope to see you in our stores soon."))
        pagedata.append(Page(ImageName: "dua", TextDescript: "Subscrible and get coupons on our daily event", bodyDescript:"Get nitified of the saving immediately when we announce them on our website. Make sure to also give us any feedback you here."))
        pagedata.append(Page(ImageName: "tiga", TextDescript: "VIP member special services", bodyDescript:"Are you ready for loads and loads of fun? Don't wait any longed. We hope to see you in our stores soon."))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pagedata.count + 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == pagedata.count{
            let loginCell = collectionView.dequeueReusableCell(withReuseIdentifier: celllogin, for: indexPath) as! LoginCell
            loginCell.controller  = self
            return loginCell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! Pagecell
        //cell.backgroundColor = .green
        //cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
        //let NameImage = imageNames[indexPath.item]
        let pages = pagedata[indexPath.item]
        cell.page = pages
    
        //cell.bearImageVIew.image = UIImage(named: pages.ImageName)
        //cell.descriptionTextView.text =  pages.TextDescript
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
