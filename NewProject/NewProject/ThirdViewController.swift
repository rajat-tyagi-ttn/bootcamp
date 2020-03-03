//
//  ThirdViewController.swift
//  NewProject
//
//  Created by Rajat Tyagi on 26/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third Screen"
        customizeNavBar()
    }
    
    func customizeNavBar() {
        self.navigationController?.navigationBar.backgroundColor = .yellow
    }
    
    @IBAction func pushView(){
    //  dismiss(animated: true, completion: nil)
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier:"FourthViewController")
        self.navigationController!.pushViewController(vc, animated: true)

    }
    
    
    @IBAction func popView() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popToRootView() {
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
