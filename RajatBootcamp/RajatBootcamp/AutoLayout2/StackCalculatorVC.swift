//
//  StackCalculatorVC.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 16/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class StackCalculatorVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func forwardButtonTapped(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ScrollViewVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
