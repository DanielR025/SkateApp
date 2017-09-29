//
//  CustomCell.swift
//  SkateApp
//
//  Created by Daniel Reicher on 23.09.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var customImage: UIImageView!
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var bodyLbl: UILabel!
    @IBOutlet weak var mapBtn: UIButton!
    @IBOutlet weak var backgroundImg: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundImg.layer.cornerRadius = 10
    }

    
    
}
