//
//  CustomViewVC.swift
//  NestedControllers
//
//  Created by Rajat Tyagi on 04/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class CustomViewVC: UIViewController {

    
    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView.frame = CGRect(x:100, y: 100, width: 100, height: 50)
        myView.backgroundColor = .blue
        myView.layer.cornerRadius = 8
        myView.layer.shadowColor = UIColor.black.cgColor
        myView.layer.shadowOpacity = 1
        myView.layer.shadowRadius = 10
        myView.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        // Do any additional setup after loading the view.
    }
    

    //    Question 3
    //   // At its simplest, a view’s bounds refers to its coordinates relative to its own space (as if the rest of your view hierarchy didn’t exist), whereas its frame refers to its coordinates relative to its parent’s space.
    //
    //    //This means a few things:
    //
    //        If you create a view at X:0, Y:0, width:100, height:100, its frame and bounds are the same.
    //        If you move that view to X:100, its frame will reflect that change but its bounds will not. Remember, the bounds is relative to the view’s own space, and internally to the view nothing has changed.
    //        If you transform the view, e.g. rotating it or scaling it up, the frame will change to reflect that, but the bounds still won’t – as far as the view is concerned internally, it hasn’t changed.
    //
    //    When you change the width or height of either frame or bounds, the other value is updated to match. Generally it’s better to modify bounds plus center and transform, and let UIKit calculate the frame for you.
        
        
    // clipsToBounds :- Setting this value to true causes subviews to be clipped to the bounds of the receiver. If set to false, subviews whose frames extend beyond the visible bounds of the receiver are not clipped. The default value is false.

}
