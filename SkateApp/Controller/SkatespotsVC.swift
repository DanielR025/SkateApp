//
//  SkatespotsVC.swift
//  SkateApp
//
//  Created by Daniel Reicher on 23.09.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class SkatespotsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "SkateCell",bundle: nil), forCellReuseIdentifier: "CustomCell")
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.black
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.selectionStyle = .none
        cell.headerLbl.text = "Zeltweg"
        cell.bodyLbl.text = "Hauptstraße 17"
        cell.customImage.image = UIImage(named: "skatepark")
        return cell
    }
}
