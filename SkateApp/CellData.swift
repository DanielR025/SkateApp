//
//  CellData.swift
//  SkateApp
//
//  Created by Daniel Reicher on 13.07.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import Foundation
import UIKit

class CellData {
    
    var _txtLbl:String!
    var _image:UIImage!
    
    
    var txtLbl:String {
        return _txtLbl
    }
    
    var image: UIImage{
        return _image
    }
    
    
    func setLableAndImage(Number: Int) {
        switch Number {
        case 0: _txtLbl = "Crew"
            _image = UIImage(named: "Picture0")
        case 1: _txtLbl = "Skatespots"
            _image = UIImage(named: "Picture1")
        case 2: _txtLbl = "Videos"
            _image = UIImage(named: "Picture2")
        case 3: _txtLbl = "Bilder"
            _image = UIImage(named: "Picture3")
        default: print("Error")
        }

    }
    
    
    
}
