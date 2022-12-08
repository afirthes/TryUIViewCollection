//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Sean Allen on 1/4/20.
//  Copyright © 2020 Sean Allen. All rights reserved.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    
    var avatarImageView:UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        avatarImageView = UIImageView()
        addSubview(avatarImageView)
        
        contentView.layer.borderColor = UIColor.red.cgColor
        contentView.layer.cornerRadius = 5
        contentView.layer.borderWidth = 5
        
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            avatarImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        avatarImageView.image = UIImage(named: "avatar-placeholder")
    }
    
}
