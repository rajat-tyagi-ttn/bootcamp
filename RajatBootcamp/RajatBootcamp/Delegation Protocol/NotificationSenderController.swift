//
//  NotificationSenderController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 05/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class NotificationSenderController: UIViewController {

    @IBOutlet weak var notificationSenderTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        
        guard let userEnteredText = notificationSenderTextField.text else {
            print("Enter Text First")
            return
            
        }
        
        let textDataDict:[String: String] = ["Message": userEnteredText]
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "notificationName"), object: nil, userInfo: textDataDict)
    }
    
   

}
