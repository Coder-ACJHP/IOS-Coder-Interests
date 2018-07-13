//
//  CustomCell.swift
//  UICollectionViewUsage
//
//  Created by akademobi5 on 9.07.2018.
//  Copyright © 2018 Akademobi5. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var imageTextLabel: UILabel!
    @IBOutlet weak var backgroundColorContainer: UIView!
    @IBOutlet weak var imageContainer: UIImageView!
    
    
    var interest: Interest? {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let interest = interest {
            imageContainer.image = interest.backgroundImage
            imageTextLabel.text = interest.imageText
            backgroundColorContainer.backgroundColor = interest.backgroundColor
        } else {
            imageContainer.image = nil
            imageTextLabel.text = ""
            backgroundColorContainer.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 0.4
        self.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.clipsToBounds = false
    }
}
