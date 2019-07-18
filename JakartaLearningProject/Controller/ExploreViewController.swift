//
//  ExploreViewController.swift
//  JakartaLearningProject
//
//  Created by Steven Gunawan on 18/07/19.
//  Copyright © 2019 Andi Ikhsan Eldrian. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        let  image = images[indexPath.item]
        cell.imageView.image = image
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfColumns: CGFloat = 2
        let width = collectionView.frame.size.width
        let xInsets: CGFloat = 10
        let cellSpacing: CGFloat = 5

        return CGSize(width: (width / numberOfColumns) - (xInsets + cellSpacing), height: (width / numberOfColumns) - (xInsets + cellSpacing))
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let images: [UIImage] = [
        UIImage(named: "image-1.jpg")!,
        UIImage(named: "image-2.jpg")!,
        UIImage(named: "image-3.jpg")!,
        UIImage(named: "image-4.jpg")!,
        UIImage(named: "image-5.jpg")!,
        UIImage(named: "image-6.jpg")!,
        UIImage(named: "image-7.jpg")!,
        UIImage(named: "image-8.jpg")!,
        UIImage(named: "image-9.jpg")!,
        UIImage(named: "image-10.jpg")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
