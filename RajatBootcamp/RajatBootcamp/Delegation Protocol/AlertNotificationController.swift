//
//  AlertNotificationController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 08/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit
import UserNotifications

class AlertNotificationController: UIViewController {

    @IBOutlet weak var permissionStatusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert]) {
            (granted,error) in
            if granted {
                print("granted")
                self.permissionStatusLabel.text = "You will Recieve Notification in 60 seconds"
            }
            else {
                print("no permission")
                self.permissionStatusLabel.text = "You have to give permission to recieve notifications"
            }
        }
        
        let content = UNMutableNotificationContent()
        content.title = "Meeting Details"
        content.body = "Tomorrow at 2 PM"
        content.sound = .defaultCriticalSound(withAudioVolume: 9)
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let uuidString = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        let notificationCenter = UNUserNotificationCenter.current()
        notificationCenter.add(request) { (error) in
            if error == nil {
                
            }
            else {
                print("error", error)
            }
            
        }
    }
    

    

}
