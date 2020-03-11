//
//  NavigationSecondViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class NavigationSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushButtonTapped(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "NavigationThirdViewController")
        self.navigationController!.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func popButtonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
