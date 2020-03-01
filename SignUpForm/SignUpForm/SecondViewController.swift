//
//  SecondViewController.swift
//  SignUpForm
//
//  Created by Rajat Tyagi on 28/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondImageView: UIImageView!
    var recievedImage : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HOME"
        secondImageView.image = recievedImage
        
        secondImageView.layer.cornerRadius = secondImageView.frame.height/2
        secondImageView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func push() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ThirdViewController")
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
