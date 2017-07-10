//
//  ChatListViewController.swift
//  Makestagram
//
//  Created by Johnny Chiu on 7/10/17.
//  Copyright © 2017 Make School. All rights reserved.
//
import FirebaseDatabase
import UIKit

class ChatListViewController: UIViewController {
    
    // MARK: - VC Lifecycle
    var chats = [Chat]()
    var userChatsHandle: FIRDatabaseHandle = 0
    var userChatsRef: FIRDatabaseReference?


    @IBOutlet weak var tableView: UITableView!
    @IBAction func dismissButtonTapped(_ sender: Any) {
        navigationController?.dismiss(animated: true)
    }
    override func viewDidLoad() {
        tableView.rowHeight = 71
        // remove separators for empty cells
        tableView.tableFooterView = UIView()
        super.viewDidLoad()
        userChatsHandle = UserService.observeChats { [weak self] (ref, chats) in
            self?.userChatsRef = ref
            self?.chats = chats
            
            // 3
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    deinit {
        // 4
        userChatsRef?.removeObserver(withHandle: userChatsHandle)
    }
}
extension ChatListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListCell") as! ChatListCell
        
        let chat = chats[indexPath.row]
        cell.titleLabel.text = chat.title
        cell.lastMessageLabel.text = chat.lastMessage
        
        return cell
    }
}
