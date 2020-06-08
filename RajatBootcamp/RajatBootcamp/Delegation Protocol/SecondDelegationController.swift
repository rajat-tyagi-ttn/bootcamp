//
//  SecondDelegationController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 05/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

protocol ReceiverDelegate {
        func didReceive(dictionary: Dictionary<String, String>)
}

class SecondDelegationController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var parentsNameTextField: UITextField!
    
    var delegate: ReceiverDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        var dict = Dictionary<String, String>()
        dict["Name"] = nameTextField.text
        dict["Age"] = ageTextField.text
        dict["ParentsName"] = parentsNameTextField.text
        delegate?.didReceive(dictionary: dict)
        self.navigationController?.popViewController(animated: true)
        print(dict)
    }
    @IBAction func nextBarButtonTapped(_ sender: UIBarButtonItem) {
        
    }
    
}
