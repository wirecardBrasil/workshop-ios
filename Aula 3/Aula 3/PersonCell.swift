//
//  PersonCell.swift
//  Aula 3
//
//  Created by Fernando Nazario Sousa on 3/10/15.
//  Copyright (c) 2015 Think Mob. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
    

    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var lblFullname: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgProfile.layer.cornerRadius = 35.0
        imgProfile.layer.masksToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
