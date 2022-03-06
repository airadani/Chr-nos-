//
//  LunchCollectionViewController.swift
//  Chronus
//
//  Created by Aira Dani on 2/7/22.
//

import UIKit

class LunchCollectionViewController: UICollectionViewController {

    let dataSource: [String] = ["Spagetti", "Club Sandwich", "Pizza", "Nachos", "Fillet"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }

}
