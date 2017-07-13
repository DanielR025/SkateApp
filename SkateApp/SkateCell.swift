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
    var wefew = CellData()
    
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
        wefew.setLableAndImage(Number: number)
        skateImage.image = wefew.image
        imageText.text = wefew.txtLbl
        }
    
}
