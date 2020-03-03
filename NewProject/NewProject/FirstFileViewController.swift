//
//  FirstFileViewController.swift
//  NewProject
//
//  Created by Rajat Tyagi on 26/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class FirstFileViewController: UIViewController {
    
    @IBOutlet weak var customLabe : UILabel!
    @IBOutlet weak var myButton : UIButton!
    public static var someString : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First Screen"
        configureView("Rajat")
        FirstFileViewController.someString = customLabe.text
        print("First View Controller DidLoad")
        
        customizeNavBar()
        
    }
    
    func customizeNavBar() {
        self.navigationController?.navigationBar.backgroundColor = .red
    }
    
    
    
    
    func configureView(_ name : String){
        customLabe.text = name
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
            pushToViewControl()
//        sender.tag += 1
//        configureView("Button Tag \(sender.tag)")
//
//        if sender.tag > 12{
//            sender.isUserInteractionEnabled = false
//            configureView("Button Disabled")
//        }
    }
    
    func pushToViewControl() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController")
//        self.navigationController?.present(vc,animated: true,completion: nil)
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    
    
    
    
    
    
    //MARK: - About Segue
    /*
    Segues are used to define the flow of our app in storyboard file. The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue. The end point of a segue is the view controller you want to display. A segue always presents a new view controller
    We do not need to trigger segues programmatically. At runtime, UIKit loads the segues associated with a view controller and connects them to the corresponding elements. When the user interacts with the element, UIKit loads the appropriate view controller, notifies your app that the segue is about to occur, and executes the transition. You can use the notifications sent by UIKit to pass data to the new view controlle
    */
    
    
    //MARK: - Difference between xib and Storyboard
    /*
    Storyboard: With the help of storyboards we can create all the screens of an application and interconnect the screen under one interface Main.storyboard. With storyboards we can use segues for pushing/presenting view controllers, thereby reducing the code needed for pushing/presenting.
    xib: Xib stands for xml interface builder. Xibs are the older way to perform iOS interface design. With xib any arbitrary/custom view can be designed, which a developer can attach to a view controller as needed. If we apply object oriented approach for our UIs, then it make sense to use xib and break view controller's view down into separate modules.
    */

}
