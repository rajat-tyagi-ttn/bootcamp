//
//  ThirdViewController.swift
//  SignUpForm
//
//  Created by Rajat Tyagi on 28/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var employerLabel: UILabel!
    @IBOutlet weak var employementSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SEGMENT CONTROL"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentClicked(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            employerLabel.text = "Employer Segment Selected"
        case 1:
            employerLabel.text = "Employee Segment Selected"
        default:
            print("Unknown Selected")
        }
        
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
