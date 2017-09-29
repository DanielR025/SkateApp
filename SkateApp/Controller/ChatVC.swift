//
//  ChatVC.swift
//  SkateApp
//
//  Created by Daniel Reicher on 25.09.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit

class ChatVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.delegate = self
        tableview.dataSource = self
        
        tableview.register(UINib(nibName: "ChatCell",bundle: nil), forCellReuseIdentifier: "CustomChatCell")
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "CustomChatCell", for: indexPath) as! CustomChatCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
}
