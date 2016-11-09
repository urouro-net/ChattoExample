//
//  ChatItemPresenterFactory.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import Chatto
import Foundation

class ChatItemPresenterFactory: ChatItemPresenterFactoryProtocol {
    /*    public func createChatItemPresenter(_ chatItem: ChatItemProtocol) -> ChatItemPresenterProtocol
     public func configure(withCollectionView collectionView: UICollectionView) */
    
    func createChatItemPresenter(_ chatItem: ChatItemProtocol) -> ChatItemPresenterProtocol {
        guard let chatItem = chatItem as? ChatItem else {
            fatalError()
        }
        
        return ChatItemPresenter(item: chatItem)
    }
    
    func configure(withCollectionView collectionView: UICollectionView) {
        ChatItemPresenter.registerCells(collectionView)
    }
}
