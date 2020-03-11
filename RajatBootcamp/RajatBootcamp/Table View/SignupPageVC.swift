//
//  SignupPageVC.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 09/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class SignupPageVC: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var detailTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var ageTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DisplayVC") as! DisplayVC
        DisplayVC.userArray.append(DisplayVC.UserDetails(name: nameTextField.text!, address: addressTextField.text!, age: ageTextField.text!, detail: detailTextField.text!, pic: userImageView.image!))
        print(DisplayVC.userArray)
        self.navigationController?.popViewController(animated: true)
    }
    
}
