//
//  SwipeCell.swift
//  Onboarding
//
//  Created by Ufuk Canlı on 22.12.2020.
//

import UIKit

class SwipeCell: UICollectionViewCell {
    
    static let reuseIdentifier = "SwipeCell"
    
    let peopleImageView = UIImageView()
    let descriptionTextView = UITextView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configurePeopleImageView() {
        addSubview(peopleImageView)
        
        peopleImageView.image = UIImage(named: "onboarding-1")
        peopleImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureDescriptionTextView() {
        addSubview(descriptionTextView)
        
        let attributedText = NSMutableAttributedString(string: "CREATE YOUR OWN FOOD GUIDE", attributes: [.font: UIFont.preferredFont(forTextStyle: .headline), .foregroundColor: UIColor.label])
        attributedText.append(NSAttributedString(string: "\n\n\nPin your favorite restaurants and create your own food guide", attributes: [.font: UIFont.preferredFont(forTextStyle: .subheadline), .foregroundColor: UIColor.secondaryLabel]))
        
        descriptionTextView.attributedText = attributedText
        descriptionTextView.isEditable = false
        descriptionTextView.isScrollEnabled = false
        descriptionTextView.textAlignment = .center
        descriptionTextView.backgroundColor = .systemBackground
        descriptionTextView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func configureCell() {        
        configurePeopleImageView()
        configureDescriptionTextView()
        
        NSLayoutConstraint.activate([
            peopleImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            peopleImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            peopleImageView.widthAnchor.constraint(equalToConstant: 333),
            peopleImageView.heightAnchor.constraint(equalToConstant: 229),
            
            descriptionTextView.topAnchor.constraint(equalTo: peopleImageView.bottomAnchor, constant: 100),
            descriptionTextView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descriptionTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            descriptionTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
        ])
    }
    
}
