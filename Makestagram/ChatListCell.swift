//
//  ChatListCell.swift
//  Makestagram
//
//  Created by Johnny Chiu on 7/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ChatListCell: UITableViewCell {
    
    // MARK: - Cell Lifcycle
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var lastMessageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
