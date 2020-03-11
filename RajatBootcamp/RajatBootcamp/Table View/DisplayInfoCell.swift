//
//  DisplayInfoCell.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 09/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class DisplayInfoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(name : String, address : String, detail : String, age : String, image : UIImage) {
        self.nameLabel.text = name
        self.addressLabel.text = address
        self.detailLabel.text = detail
        self.ageLabel.text = age
        self.userImage.image = image
    }
    
}
