//
//  ProfileHeaderView.swift
//  Makestagram
//
//  Created by Make School on 7/7/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

protocol ProfileHeaderViewDelegate: class {
    func didTapSettingsButton(_ button: UIButton, on headerView: ProfileHeaderView)
    
}

class ProfileHeaderView: UICollectionReusableView {
    weak var delegate: ProfileHeaderViewDelegate?
    @IBOutlet weak var postCountLabel: UILabel!
    @IBOutlet weak var followerCountLabel: UILabel!
    @IBOutlet weak var followingCountLabel: UILabel!
    @IBOutlet weak var settingsButton: UIButton!
    
    override func awakeFromNib(){
        super.awakeFromNib()
        
        settingsButton.layer.cornerRadius = 6
        settingsButton.layer.borderColor = UIColor.lightGray.cgColor
        settingsButton.layer.borderWidth = 1
    }
    @IBAction func settingsButtonTapped(_ sender: Any) {
        weak var delegate: ProfileHeaderViewDelegate?
    }
    
}
