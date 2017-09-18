//
//  StartscreenVC.swift
//  SkateApp
//
//  Created by Daniel Reicher on 12.07.17.
//  Copyright © 2017 Daniel Reicher. All rights reserved.
//

import UIKit
import AMScrollingNavbar
import Firebase

class StartscreenVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var TableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableView.delegate = self
        TableView.dataSource = self
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let navigationController = self.navigationController as? ScrollingNavigationController {
            navigationController.followScrollView(TableView, delay: 50.0)
        }
    }
    
    
    
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParentViewController {
            let firebaseAuth = Auth.auth()
            print("sign out")
            do {
                try firebaseAuth.signOut()
            } catch let signOutError as NSError {
                print ("Error signing out: %@", signOutError)
            }
        }
    }
    
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "SkateCell", for: indexPath) as? SkateCell {
            cell.configureCell(number: indexPath.row)
            
            
        return cell
        }
    
    return SkateCell()
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        segues(number: indexPath.row)
    }
    
    
    
    
    func segues(number: Int) {
        
        switch number {
        case 0: print("Segue0")
        case 1: print("Segue1")
        case 2: print("Segue2")
        case 3: print("Segue3")
        default: print("Segue4")
        }
    }
    
}
