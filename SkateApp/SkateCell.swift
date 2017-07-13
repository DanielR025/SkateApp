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
   
    

    
    var buttonNumber:Int!
    
    
    @IBAction func skateButton(_ sender: UIButton) {
        sender.tag = buttonNumber
        switch sender.tag {
        case 0: print("Button1")
        case 1: print("button2")
        case 2: print("button3")
        case 3: print("button4")
        default: print("Error")
        }
        
    }
    
   
    
    func configureCell(number: Int){
        skateImage.image = UIImage(named: "Picture\(number)")
        switch buttonNumber {
        case 0: imageText.text = "Crew"
        case 1: imageText.text = "Skatespots"
        case 2: imageText.text = "Videos"
        case 3: imageText.text = "Bilder"
        default: print("Error")
        }
    }
    
}
