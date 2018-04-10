//
//  EmojiDefinitionController.swift
//  Emoji Dictionary
//
//  Created by Kamran on 4/10/18.
//  Copyright © 2018 Kamran Bayegan. All rights reserved.
//

import UIKit

class EmojiDefinitionController: UIViewController {
    
    var emoji = ""

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiCategoryLbel: UILabel!
    @IBOutlet weak var emojiDefLabel: UILabel!
    @IBOutlet weak var emojiDateLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        emojiLabel.text = emoji
    }


}
