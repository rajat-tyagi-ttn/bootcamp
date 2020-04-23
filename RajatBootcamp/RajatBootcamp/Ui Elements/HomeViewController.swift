//
//  HomeViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeImageView: UIImageView!
    var recievedImage : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "HOME"
        homeImageView.image = recievedImage
        
        homeImageView.layer.cornerRadius = homeImageView.frame.height/2
        homeImageView.clipsToBounds = true
    }
    
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SegmentControlViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
