//
//  PageView.swift
//  NestedControllers
//
//  Created by Rajat Tyagi on 24/04/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class PageView: UIPageViewController , UIPageViewControllerDataSource{
    
    let pageOneVC = Page1()
    let pageTwoVC = Page2()
    let pageThreeVc = Page3()

   lazy var pages : [UIViewController] = {
            return[

                self.pageOneVC,
                self.pageTwoVC,
                self.pageThreeVc
                
            ]
       }()
        

        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            self.dataSource = self
            
            if let FirsVC = pages.first {
                setViewControllers([FirsVC], direction: .forward, animated: true, completion: nil)
            }
            
        }
        
        
        
        // MARK : page view data source methods
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
            guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
            
            let previousIndex = viewControllerIndex - 1
            
            guard previousIndex >= 0          else { return pages.last }
            
            guard pages.count > previousIndex else { return nil }
            
            return pages[previousIndex]
        }
        
        func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
            
            let nextIndex = viewControllerIndex + 1
            
            guard nextIndex < pages.count else { return pages.first }
            
            guard pages.count > nextIndex else { return nil         }
            
            return pages[nextIndex]
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
