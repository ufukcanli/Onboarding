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
    let headlineLabel = UILabel()
    let subheadlineLabel = UILabel()
    let descriptionStackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(image: String, headline: String, subheadline: String) {
        peopleImageView.image = UIImage(named: image)
        headlineLabel.text = headline
        subheadlineLabel.text = subheadline
    }
    
    func configure() {
        backgroundColor = .systemBackground
        
        peopleImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(peopleImageView)
        
        headlineLabel.textAlignment = .center
        headlineLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        headlineLabel.textColor = .label
        headlineLabel.numberOfLines = 0
        
        subheadlineLabel.textAlignment = .center
        subheadlineLabel.font = UIFont.preferredFont(forTextStyle: .subheadline)
        subheadlineLabel.textColor = .secondaryLabel
        subheadlineLabel.numberOfLines = 0
        
        descriptionStackView.addArrangedSubview(headlineLabel)
        descriptionStackView.addArrangedSubview(subheadlineLabel)
        
        descriptionStackView.axis = .vertical
        descriptionStackView.spacing = 10
        descriptionStackView.alignment = .center
        descriptionStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(descriptionStackView)
        
        NSLayoutConstraint.activate([
            peopleImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            peopleImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            peopleImageView.widthAnchor.constraint(equalToConstant: 333),
            peopleImageView.heightAnchor.constraint(equalToConstant: 229),
            
            descriptionStackView.topAnchor.constraint(equalTo: peopleImageView.bottomAnchor, constant: 100),
            descriptionStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            descriptionStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            descriptionStackView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
}
