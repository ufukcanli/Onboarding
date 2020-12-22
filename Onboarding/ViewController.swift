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
        descriptionTextView.textAlignment = .center
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureViewController() {
        view.backgroundColor = .systemGreen
        
        configurePeopleImageView()
        configureDescriptionTextView()
        
        NSLayoutConstraint.activate([
            peopleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            peopleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            peopleImageView.widthAnchor.constraint(equalToConstant: 333),
            peopleImageView.heightAnchor.constraint(equalToConstant: 229),
            
            descriptionTextView.topAnchor.constraint(equalTo: peopleImageView.bottomAnchor, constant: 150),
            descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            descriptionTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
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

