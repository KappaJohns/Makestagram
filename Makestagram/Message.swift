//
//  Message.swift
//  Makestagram
//
//  Created by Make School on 7/7/17.
//  Copyright © 2017 Make School. All rights reserved.
//
import FirebaseDatabase.FIRDataSnapshot


class Message {
    
    // MARK: - Properties
    
    var key: String?
    let content: String
    let timestamp: Date
    let sender: User
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let content = dict["content"] as? String,
            let timestamp = dict["timestamp"] as? TimeInterval,
            let userDict = dict["sender"] as? [String : Any],
            let uid = userDict["uid"] as? String,
            let username = userDict["username"] as? String
            else { return nil }
        
        self.key = snapshot.key
        self.content = content
        self.timestamp = Date(timeIntervalSince1970: timestamp)
        self.sender = User(uid: uid, username: username)
    }
    init(content: String) {
        self.content = content
        self.timestamp = Date()
        self.sender = User.current
    }
}
