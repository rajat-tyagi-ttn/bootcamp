//
//  MenuVC.swift
//  NestedControllers
//
//  Created by Rajat Tyagi on 11/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {


    
    @IBOutlet weak var tableView: UITableView!
    var menuItems = ["Tab Bar Programatically","Tab Bar from Story Board","Custom View","Page View Programatically"]
    
    var viewControllerNames = ["MainTabBar","StoryBoardTabBar","CustomViewVC","PageView"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}

extension MenuVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableCell
        cell.configCell(menuLabel: "\(menuItems[indexPath.row])")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "\(viewControllerNames[indexPath.row])")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
