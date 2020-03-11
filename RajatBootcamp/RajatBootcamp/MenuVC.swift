//
//  MenuVC.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 11/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var menuItemArray = ["Navigation","UI Elements","Auto Layout 1","TableView"]
    var storyBoardIDArray = ["NavigationFirstViewController","SignUpViewController","AutoLayoutVC1","NestedTableViewVC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "MenuTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "menuItemCell")
        
    }
    

}

extension MenuVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuItemCell", for: indexPath) as! MenuTableViewCell
        cell.configCell(menuItem: "\(menuItemArray[indexPath.row])")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "\(storyBoardIDArray[indexPath.row])")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
