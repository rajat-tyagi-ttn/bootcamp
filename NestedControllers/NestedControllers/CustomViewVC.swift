//
//  CustomViewVC.swift
//  NestedControllers
//
//  Created by Rajat Tyagi on 04/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class CustomViewVC: UIViewController {

    
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.frame = CGRect(x:100, y: 100, width: 100, height: 50)
        myView.backgroundColor = .blue
        myView.layer.cornerRadius = 8
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 1
        myView.layer.shadowRadius = 10
        myView.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        // Do any additional setup after loading the view.
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
