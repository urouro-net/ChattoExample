//
//  ChatDataSource.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import Chatto
import Foundation

class ChatDataSource: ChatDataSourceProtocol {
    var hasMoreNext: Bool {
        return false
    }
    var hasMorePrevious: Bool {
        return false
    }
    
    var chatItems: [ChatItemProtocol] {
        return [
            ChatItem(messageId: NSUUID().uuidString,
                     avatarImageURL: URL(string: "https://placem.at/people?w=400&h=400")!,
                     dateString: "2016-01-01 00:00:00"),
            ChatItem(messageId: NSUUID().uuidString,
                     avatarImageURL: URL(string: "https://placem.at/places?w=400&h=400")!,
                     dateString: "2016-02-01 00:00:00"),
            ChatItem(messageId: NSUUID().uuidString,
                     avatarImageURL: URL(string: "https://placem.at/things?w=400&h=400")!,
                     dateString: "2016-03-01 00:00:00")
        ]
    }
    
    weak var delegate: ChatDataSourceDelegateProtocol?
    
    func loadNext() {
        // Should trigger chatDataSourceDidUpdate with UpdateType.Pagination
    }
    
    func loadPrevious() {
        // Should trigger chatDataSourceDidUpdate with UpdateType.Pagination
    }
    
    func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion: ((Bool)) -> Void) {
        // If you want, implement message count contention for performance, otherwise just call completion(false)
        completion(false)
    }
}
