//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Make School on 7/5/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit

protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell{
    
    @IBOutlet weak var likeButton: UIButton!
    weak var delegate: PostActionCellDelegate?

    static let height: CGFloat = 46
    @IBAction func likeButtonTapped(_ sender: Any) {
        delegate?.didTapLikeButton(sender as! UIButton, on: self)
    }
    @IBOutlet weak var timeAgoLabel: UILabel!
    
    @IBOutlet weak var likeCountLabel: UILabel!
}
