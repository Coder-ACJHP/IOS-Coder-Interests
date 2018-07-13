//
//  Interest.swift
//  UICollectionViewUsage
//
//  Created by akademobi5 on 9.07.2018.
//  Copyright © 2018 Akademobi5. All rights reserved.
//

import UIKit

class Interest {
    
    var backgroundImage: UIImage?
    var imageText: String?
    var backgroundColor: UIColor?
    
    init(backgroundImage: UIImage, shadowColor: UIColor, imageText: String) {
        self.backgroundImage = backgroundImage
        self.backgroundColor = shadowColor
        self.imageText = imageText
    }
    
    static func fetchData() -> [Interest] {
        return [
            Interest(backgroundImage: UIImage(named: "wallpaper-1")!, shadowColor: UIColor(red:0.50, green:0.50, blue:0.50, alpha:0.5) , imageText: "We love to surround the world!"),
            Interest(backgroundImage: UIImage(named: "wallpaper-2")!, shadowColor: UIColor(red:0.00, green:0.28, blue:0.73, alpha:0.5)  , imageText: "We love to surround the world!"),
            Interest(backgroundImage: UIImage(named: "wallpaper-3")!, shadowColor: UIColor(red:0.73, green:0.00, blue:0.57, alpha:0.5) , imageText: "We love to surround the world!"),
            Interest(backgroundImage: UIImage(named: "wallpaper-4")!, shadowColor: UIColor(red:0.59, green:0.73, blue:0.00, alpha:0.5) , imageText: "We love to surround the world!")
        ]
    }
}
