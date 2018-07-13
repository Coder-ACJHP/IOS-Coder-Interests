//
//  UserProfileController.swift
//  UICollectionViewUsage
//
//  Created by akademobi5 on 9.07.2018.
//  Copyright © 2018 Akademobi5. All rights reserved.
//

import UIKit

class UserProfileController: UIViewController {

    @IBOutlet weak var imageContainer: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageContainer.layer.borderWidth = 1.0
        imageContainer.layer.borderColor = UIColor.gray.cgColor
        nameLabel.layer.borderWidth = 1.0
        nameLabel.layer.borderColor = UIColor.gray.cgColor
    }

}
