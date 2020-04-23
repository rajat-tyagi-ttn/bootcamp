//
//  NavigationFifthViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class NavigationFifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func popButtonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func popToRootButtonTapped(_ sender: UIButton) {
         self.navigationController?.popToRootViewController(animated: true)
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
