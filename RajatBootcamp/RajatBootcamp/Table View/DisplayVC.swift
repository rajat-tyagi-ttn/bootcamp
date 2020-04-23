//
//  DisplayVC.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 09/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class DisplayVC: UIViewController {
    
    
    @IBOutlet weak var reloadButton: UIBarButtonItem!
    
    @IBOutlet weak var tableView: UITableView!
    struct UserDetails {
        var name : String
        var address : String
        var age : String
        var detail : String
        var pic : UIImage
    }
    
    public static var userArray : [UserDetails] = [UserDetails(name: "Rajat", address: "qwerty", age: "22", detail: "asdfg", pic: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8470588235)),
        UserDetails(name: "Sparsh", address: "qwerty", age: "20", detail: "adsfgsgsg", pic: #imageLiteral(resourceName: "1")),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "DisplayInfoCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "userInfoCell")
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        tableView.reloadData()
    }
    

   
    @IBAction func reloadButtonTapped(_ sender: Any) {
        tableView.reloadData()
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignupPageVC")
//        self.navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
}

extension DisplayVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DisplayVC.userArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "userInfoCell", for: indexPath) as! DisplayInfoCell
        cell.configCell(name: DisplayVC.userArray[indexPath.row].name, address: DisplayVC.userArray[indexPath.row].address, detail: DisplayVC.userArray[indexPath.row].detail, age: DisplayVC.userArray[indexPath.row].age, image: DisplayVC.userArray[indexPath.row].pic)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
}
