//
//  MenuTableCell.swift
//  NestedControllers
//
//  Created by Rajat Tyagi on 11/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class MenuTableCell: UITableViewCell {

    @IBOutlet weak var menuLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(menuLabel : String) {
        self.menuLabel.text = menuLabel
    }

}
