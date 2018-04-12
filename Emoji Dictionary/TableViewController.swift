//
//  TableViewController.swift
//  Emoji Dictionary
//
//  Created by Kamran on 4/9/18.
//  Copyright © 2018 Kamran Bayegan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row].theEmoji

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "mySegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! EmojiDefinitionController
        emojiDefVC.emoji = sender as! Emoji
        
    }
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "A smiley face"
        smiley.releaseDate = 2011
        smiley.category = "Faces"
        
        let crying = Emoji()
        crying.theEmoji = "😂"
        crying.def = "A crying face"
        crying.releaseDate = 2012
        crying.category = "Faces"
        
        let apple = Emoji()
        apple.theEmoji = "🍎"
        apple.def = "A nice apple"
        apple.releaseDate = 2017
        apple.category = "Food"
        
        return [smiley, crying, apple]
    }
    

}
