//
//  AutoLayoutVC2.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 05/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class AutoLayoutVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func nextButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AutoLayoutVC3")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
