//
//  SwipeViewController.swift
//  Onboarding
//
//  Created by Ufuk Canlı on 22.12.2020.
//

import UIKit

class SwipeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let pageImages = ["onboarding-1", "onboarding-2", "onboarding-3"]
    let pageHeadings = ["CREATE YOUR OWN FOOD GUIDE", "SHOW YOU THE LOCATION", "DISCOVER GREAT RESTAURANTS"]
    var pageSubHeadings = ["Pin your favorite restaurants and create your own food guide", "Search and locate your favourite restaurant on Maps", "Find restaurants shared by your friends and other foodies"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .systemBackground
        collectionView.register(SwipeCell.self, forCellWithReuseIdentifier: SwipeCell.reuseIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pageImages.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SwipeCell.reuseIdentifier, for: indexPath) as! SwipeCell
        cell.set(image: pageImages[indexPath.row], headline: pageHeadings[indexPath.row], subheadline: pageSubHeadings[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
