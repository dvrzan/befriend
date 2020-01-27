//
//  Constants.swift
//  BeFriend
//
//  Created by Danijela Vrzan on 2020-01-24.
//  Copyright © 2020 Danijela Vrzan. All rights reserved.
//

struct Constants {
    static let registerSegue = "RegisterToChat"
    static let loginSegue = "LoginToChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct BrandColors {
        static let senderMessage = "SenderMessageBubble"
        static let receiverMessage = "ReceiverMessageBubble"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
    
}
