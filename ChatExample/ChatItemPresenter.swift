//
//  ChatItemPresenter.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import Chatto
import Nuke
import Foundation

class ChatItemPresenter: ChatItemPresenterProtocol {
    
    var item: ChatItem
    
    init(item: ChatItem) {
        self.item = item
    }
    
    static func registerCells(_ collectionView: UICollectionView) {
        let nib = UINib(nibName: "ChatCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "ChatCell")
    }
    
    var canCalculateHeightInBackground: Bool {
        return true
    }
    
    func heightForCell(maximumWidth width: CGFloat, decorationAttributes: ChatItemDecorationAttributesProtocol?) -> CGFloat {
        return 100.0
    }
    
    func dequeueCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "ChatCell", for: indexPath)
    }
    
    func configureCell(_ cell: UICollectionViewCell, decorationAttributes: ChatItemDecorationAttributesProtocol?) {
        guard let cell = cell as? ChatCell else {
            fatalError()
        }
        
        cell.messageLabel.text = item.messageId
        Nuke.loadImage(with: Request(url: item.avatarImageURL), into: cell.avatarImageView)
        cell.timeLabel.text = item.dateString
    }
    
    func cellWillBeShown(_ cell: UICollectionViewCell) {
    }
    
    func cellWasHidden(_ cell: UICollectionViewCell) {
    }
    
    func shouldShowMenu() -> Bool {
        return false
    }
    
    func canPerformMenuControllerAction(_ action: Selector) -> Bool {
        return false
    }
    
    func performMenuControllerAction(_ action: Selector) {
    }
    
}
