//
//  ViewController.swift
//  Onboarding
//
//  Created by Ufuk Canlı on 22.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let peopleImageView = UIImageView()
    let descriptionTextView = UITextView()
    let previousButton = UIButton(type: .system)
    let nextButton = UIButton(type: .system)
    let pageControl = UIPageControl()
    let bottomStackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        configureViewController()
    }
    
    func configurePeopleImageView() {
        view.addSubview(peopleImageView)
        peopleImageView.image = UIImage(named: "onboarding-1")
        peopleImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureDescriptionTextView() {
        view.addSubview(descriptionTextView)
        let attributedText = NSMutableAttributedString(string: "CREATE YOUR OWN FOOD GUIDE", attributes: [.font: UIFont.preferredFont(forTextStyle: .headline), .foregroundColor: UIColor.label])
        attributedText.append(NSAttributedString(string: "\n\n\nPin your favorite restaurants and create your own food guide", attributes: [.font: UIFont.preferredFont(forTextStyle: .subheadline), .foregroundColor: UIColor.secondaryLabel]))
        descriptionTextView.attributedText = attributedText
        descriptionTextView.isEditable = false
        descriptionTextView.isScrollEnabled = false
        descriptionTextView.textAlignment = .center
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
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
        
        configurePeopleImageView()
        configureDescriptionTextView()
        configureBottomStackView()
        
        NSLayoutConstraint.activate([
            peopleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            peopleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            peopleImageView.widthAnchor.constraint(equalToConstant: 333),
            peopleImageView.heightAnchor.constraint(equalToConstant: 229),
            
            descriptionTextView.topAnchor.constraint(equalTo: peopleImageView.bottomAnchor, constant: 100),
            descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            descriptionTextView.bottomAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: -100),
            
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

