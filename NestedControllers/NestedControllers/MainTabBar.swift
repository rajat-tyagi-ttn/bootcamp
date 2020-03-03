//
//  MainTabBar.swift
//  NestedControllers
//
//  Created by Rajat Tyagi on 03/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {
    
    let tabOneVc = TabOneViewController()
    let tabTwoVc = TabTwoViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [createControllers(title: "First", vc: tabOneVc), createControllers(title: "Second", vc: tabTwoVc)]
        
    }
    
    func createControllers(title: String, vc : UIViewController) -> UINavigationController {
        let createdVc = UINavigationController(rootViewController: vc)
        createdVc.tabBarItem.title = title
        return createdVc
    }
 

}
