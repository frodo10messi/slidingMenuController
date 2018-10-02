//
//  CustomMenuHeaderView.swift
//  SlideOutMenuLBTA
//
//  Created by Brian Voong on 10/2/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class CustomMenuHeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        // custom components for our header
        let nameLabel = UILabel()
        nameLabel.text = "Brian Voong"
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        let usernameLabel = UILabel()
        usernameLabel.text = "@buildthatapp"
        
        let statsLabel = UILabel()
        statsLabel.text = "42 Following 7091 Followers"
        
        // this is a spacing hack with UIView
        let arrangedSubviews = [
            UIView(), nameLabel, usernameLabel, SpacerView(space: 16), statsLabel
        ]
        let stackView = UIStackView(arrangedSubviews: arrangedSubviews)
        stackView.axis = .vertical
        stackView.spacing = 4
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.layoutMargins = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
