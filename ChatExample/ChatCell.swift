//
//  ChatCell.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import UIKit

class ChatCell: UICollectionViewCell {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    
    static let cellHeight: CGFloat = 101.0
    
}
