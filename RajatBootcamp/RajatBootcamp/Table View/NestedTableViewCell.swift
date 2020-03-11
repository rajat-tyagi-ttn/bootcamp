//
//  NestedTableViewCell.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 11/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class NestedTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        let nib = UINib.init(nibName: "NestedCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "infoCollectionViewCell")
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension NestedTableViewCell : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "infoCollectionViewCell", for: indexPath) as! NestedCollectionViewCell
        return cell
    }
    
    
}
