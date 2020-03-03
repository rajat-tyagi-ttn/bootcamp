//
//  FifthViewController.swift
//  NewProject
//
//  Created by Rajat Tyagi on 27/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    var valueFromFirstController : String?
    
    @IBOutlet weak var firstVCLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Five Screen"
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        firstVCLabel.text = FirstFileViewController.someString
        customizeNavBar()
    }
    
    func customizeNavBar() {
        self.navigationController?.navigationBar.backgroundColor = .green
    }
    
    @IBAction func popToRootView() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func popView() {
        self.navigationController?.popViewController(animated: true)
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
