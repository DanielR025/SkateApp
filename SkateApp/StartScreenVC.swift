//
//  StartscreenVC.swift
//  SkateApp
//
//  Created by Daniel Reicher on 12.07.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class StartscreenVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var TableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableView.delegate = self
        TableView.dataSource = self
        
    }

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SkateCell", for: indexPath) as? SkateCell {
            print(indexPath.row)
            cell.buttonNumber = indexPath.row
            cell.configureCell(number: indexPath.row)
            
            
        return cell
        }
    
    return SkateCell()
    }
    
    
    
    
    
}
