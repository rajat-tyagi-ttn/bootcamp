//
//  AutoLayoutVC1.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 05/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class AutoLayoutVC1: UIViewController {

    @IBOutlet weak var roundImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        roundImage()
        shadowImage()
    }
    
    func roundImage() {
        
        roundImageView.layer.cornerRadius = roundImageView.frame.height/2
        roundImageView.clipsToBounds = true
        
    }
    
    func shadowImage() {
        roundImageView.layer.shadowColor = UIColor.black.cgColor
        roundImageView.layer.shadowOpacity = 1
        roundImageView.layer.shadowRadius = 40
        roundImageView.layer.shadowOffset = CGSize(width: 10, height: 10)
    }
    
    @IBAction func nextButtonClicked(_ sender : UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AutoLayoutVC2")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
