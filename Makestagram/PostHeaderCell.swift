//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Make School on 7/5/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {
    static let height: CGFloat = 54
    @IBOutlet weak var usernameLabel: UILabel!
    @IBAction func optionsButtonTapped(_ sender: Any) {
        print("options button tapped")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
