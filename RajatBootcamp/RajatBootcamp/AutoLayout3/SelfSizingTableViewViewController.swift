//
//  SelfSizingTableViewViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/06/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class SelfSizingTableViewViewController: UIViewController {

    @IBOutlet weak var selfSizingTableView: UITableView!
    
    let tableArray = ["hello this is the first cell", "Hello this is the second cell and i have a few more information in it", "Hello this is third cell and its information is blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah blah- blah- blah"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        selfSizingTableView.rowHeight = UITableView.automaticDimension
        selfSizingTableView.estimatedRowHeight = 30
        
        selfSizingTableView.delegate = self
    }
    

  
}


extension SelfSizingTableViewViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let SelfSizingTableViewCell  =  tableView.dequeueReusableCell(withIdentifier: "SelfSizingTableViewCell", for: indexPath)
        if let label = SelfSizingTableViewCell.viewWithTag(10) as? UILabel {
            label.text = tableArray[indexPath.row]
        }
        
        return SelfSizingTableViewCell
        
    }
    
    
}
