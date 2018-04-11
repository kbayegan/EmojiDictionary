//
//  EmojiDefinitionController.swift
//  Emoji Dictionary
//
//  Created by Kamran on 4/10/18.
//  Copyright © 2018 Kamran Bayegan. All rights reserved.
//

import UIKit

class EmojiDefinitionController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    @IBOutlet weak var emojiDate: UILabel!
    @IBOutlet weak var emojiCategory: UILabel!
    
    var emoji = ""

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        emojiLabel.text = emoji
    }


}
