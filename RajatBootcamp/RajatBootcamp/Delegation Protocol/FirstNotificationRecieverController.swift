//
//  FirstNotificationRecieverController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 05/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class FirstNotificationRecieverController: UIViewController {

    @IBOutlet weak var notificationRecieverLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateLabel(_:)), name: NSNotification.Name(rawValue: "notificationName"), object: nil)
    }

    @objc func updateLabel(_ notification: NSNotification) {
           print(notification.userInfo ?? "")
           if let dict = notification.userInfo as NSDictionary? {
               if let text = dict["Message"] as? String{
                notificationRecieverLabel.text = text
               }
           }
    }

}
