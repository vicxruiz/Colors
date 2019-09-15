//
//  PhotoCollectionViewController.swift
//  Colors
//
//  Created by Victor  on 9/15/19.
//  Copyright © 2019 Victor . All rights reserved.
//

import Foundation
import UIKit

class PhotoCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
    }
    
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//    }
    
}
