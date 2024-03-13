//
//  FriendsViewController.swift
//  GB.CreateApp.Homework1
//
//  Created by MacOSX on 12.03.2024.
//

import UIKit

class FriendsViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        FriendCell()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    
}
