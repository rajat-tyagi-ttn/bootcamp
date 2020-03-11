//
//  NestedTableViewVC.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 11/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class NestedTableViewVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var sectionsTitle = ["Action","Drama","Science Fiction","Kids","Horror"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "NestedTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "infoTableViewCell")

    }

    @IBAction func nextButtonTapped(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DisplayVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


extension NestedTableViewVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoTableViewCell", for: indexPath) as! NestedTableViewCell
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsTitle.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionsTitle[section]
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
