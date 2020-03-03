//
//  SecondViewController.swift
//  NewProject
//
//  Created by Rajat Tyagi on 26/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Screen"

       customizeNavBar()
    }
    
    
    func customizeNavBar() {
        self.navigationController?.navigationBar.backgroundColor = .cyan
    }
    
    @IBAction func pushView(){
//        dismiss(animated: true, completion: nil)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ThirdViewController")
        self.navigationController!.pushViewController(vc, animated: true)

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
