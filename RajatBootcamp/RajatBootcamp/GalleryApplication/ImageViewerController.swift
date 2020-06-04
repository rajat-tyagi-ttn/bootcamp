//
//  ImageViewerController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 04/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class ImageViewerController: UIViewController {

    @IBOutlet weak var galleryImage: UIImageView!
    
   var galleryModelItem: GalleryItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        DispatchQueue.main.async {
            if let galleryItem = self.galleryModelItem {
                self.galleryImage.setImageFromURL(ImageURL: galleryItem.thumbnailURL)
            }
        }
    }
    
    @IBAction func authorButtonTapped(_ sender: UIButton) {
        
        if let url = URL(string: galleryModelItem!.author_url) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:])
            }
        }
    }
    @IBAction func downloadButtonTapped(_ sender: UIButton) {
    }
    
}
