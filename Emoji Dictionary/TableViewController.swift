//
//  TableViewController.swift
//  Emoji Dictionary
//
//  Created by Kamran on 4/9/18.
//  Copyright © 2018 Kamran Bayegan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var emojis = ["😀", "😂", "🍎", "🚗"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mySegue", sender: nil)
    }
    

}
