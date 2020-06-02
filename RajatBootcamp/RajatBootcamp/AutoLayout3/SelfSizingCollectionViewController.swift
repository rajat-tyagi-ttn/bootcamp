//
//  SelfSizingCollectionViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class SelfSizingCollectionViewController: UIViewController {
    
    @IBOutlet weak var selfSizingCollectionView: UICollectionView!
    
    @IBOutlet weak var selfSizingCollectionViewFlowLayout: UICollectionViewFlowLayout!{
        
        didSet{
            selfSizingCollectionViewFlowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        }
        
    }
    
    
    let collectionArray = ["hello this is the first cell", "Hello this is the second cell and i have a few more information in it", "Hello this is third cell and its information is blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

extension SelfSizingCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let SelfSizingCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelfSizingCollectionViewCell", for: indexPath)
        if let label = SelfSizingCollectionViewCell.viewWithTag(10) as? UILabel {
            label.text = collectionArray[indexPath.row]
        }

        
        return SelfSizingCollectionViewCell
        
    }
}
