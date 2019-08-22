//
//  ViewController.swift
//  UICollectionView
//
//  Created by Mohamed on 8/22/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
  

    @IBOutlet weak var collectionView: UICollectionView!
    var images:[UIImage] = [UIImage(named: "img1")! , UIImage(named: "img2")! , UIImage(named: "img3")! ,UIImage(named: "img4")! , UIImage(named: "img5")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CustomCollectionView
        
        cell?.imageViewCell.image = images[indexPath.row]
        
        return cell!
    }
    
}

