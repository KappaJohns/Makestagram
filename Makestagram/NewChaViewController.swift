
//
//  NewChaViewController.swift
//  Makestagram
//
//  Created by Johnny Chiu on 7/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import Foundation
import UIKit

class NewChatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nextButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func nextButtonTapped(_ sender: UIBarButtonItem) {
        print("Next Button Tapped")
    }
}
