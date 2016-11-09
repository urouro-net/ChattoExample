//
//  ChatItem.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import Chatto
import Foundation

class ChatItem: ChatItemProtocol {
    var uid: String { return self.messageId }
    var type: ChatItemType { return "message" }
    
    var messageId: String
    var avatarImageURL: URL
    var dateString: String
    
    init(messageId: String, avatarImageURL: URL, dateString: String) {
        self.messageId = messageId
        self.avatarImageURL = avatarImageURL
        self.dateString = dateString
    }
}
