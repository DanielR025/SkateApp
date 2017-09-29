//
//  SkateCell.swift
//  SkateApp
//
//  Created by Daniel Reicher on 13.07.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class SkateCell: UITableViewCell {

    @IBOutlet weak var skateImage: UIImageView!
    @IBOutlet weak var imageText: UILabel!
   
    

    
    func configureCell(number: Int) {
        skateImage.image = UIImage(named: "Picture" + "\(number)")
        
        switch number {
        case 0: imageText.text = "Crew"
        case 1: imageText.text = "Skatespots"
        case 2: imageText.text = "Chat"
        case 3: imageText.text = "Bilder"
        case 4: imageText.text = "Videos"
        default: print("error")
        }
    }
    
    
    
    
    
    
    
    
}
