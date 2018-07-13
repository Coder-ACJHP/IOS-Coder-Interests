//
//  ViewController.swift
//  UICollectionViewUsage
//
//  Created by akademobi5 on 9.07.2018.
//  Copyright © 2018 Akademobi5. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mockData = [Interest]()
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var profileImageContainer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mockData = Interest.fetchData()
        
        profileImageContainer.isUserInteractionEnabled = true
        profileImageContainer.layer.cornerRadius = profileImageContainer.frame.size.height / 2
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture))
        profileImageContainer.addGestureRecognizer(tapGesture)
    }
    
    @objc private func handleTapGesture() {
      
        if let userProfileController = self.storyboard?.instantiateViewController(withIdentifier: "SecondView") {
            self.present(userProfileController, animated: true, completion: nil)
        }
    }
    
    @IBAction func discoverButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func editProfileButtonPressed(_ sender: Any) {
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SingleCell", for: indexPath) as! CustomCell
        customCell.interest = mockData[indexPath.item]
        return customCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let choosenCell = collectionView.cellForItem(at: indexPath) as? CustomCell
        UIView.animate(withDuration: 0.3) {
            choosenCell?.backgroundColorContainer.backgroundColor = UIColor(white: 0, alpha: 0.5)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let choosenCell = collectionView.cellForItem(at: indexPath) as? CustomCell
        UIView.animate(withDuration: 0.3) {
            choosenCell?.backgroundColorContainer.backgroundColor = self.mockData[indexPath.item].backgroundColor
        }
    }
}
