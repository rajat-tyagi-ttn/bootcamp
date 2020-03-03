//
//  NavigationFourthViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class NavigationFourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func pushButtonTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "NavigationFifthViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func popButtonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popToSecondButtonTapped(_ sender: UIButton) {
        self.navigationController?.popToViewController((self.navigationController?.viewControllers[1])!, animated: true)
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
