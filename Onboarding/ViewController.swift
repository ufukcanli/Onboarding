//
//  ViewController.swift
//  Onboarding
//
//  Created by Ufuk Canlı on 22.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let previousButton = UIButton(type: .system)
    let nextButton = UIButton(type: .system)
    let pageControl = UIPageControl()
    let bottomStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        configureViewController()
    }
    
    func configureBottomStackView() {
        previousButton.setTitle("PREV", for: .normal)
        previousButton.setTitleColor(.systemGray, for: .normal)
        previousButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        
        pageControl.currentPage = 0
        pageControl.numberOfPages = 3
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .systemGray
        
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
                
        bottomStackView.addArrangedSubview(previousButton)
        bottomStackView.addArrangedSubview(pageControl)
        bottomStackView.addArrangedSubview(nextButton)
        
        bottomStackView.axis = .horizontal
        bottomStackView.distribution = .fillEqually
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bottomStackView)
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground

        configureBottomStackView()
        
        NSLayoutConstraint.activate([
            bottomStackView.heightAnchor.constraint(equalToConstant: 100),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

}

var pageHeadings = [
    "CREATE YOUR OWN FOOD GUIDE",
    "SHOW YOU THE LOCATION",
    "DISCOVER GREAT RESTAURANTS"
]
var pageImages = [
    "onboarding-1",
    "onboarding-2",
    "onboarding-3"
]
var pageSubHeadings = [
    "Pin your favorite restaurants and create your own food guide",
    "Search and locate your favourite restaurant on Maps",
    "Find restaurants shared by your friends and other foodies"
]

