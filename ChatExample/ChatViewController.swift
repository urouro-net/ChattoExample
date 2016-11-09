//
//  ChatViewController.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import Chatto
import ChattoAdditions
import UIKit

class ChatViewController: BaseChatViewController {
    
    var dataSource: ChatDataSourceProtocol? {
        didSet {
            guard let dataSource = dataSource else { return }
            
            self.chatDataSource = dataSource
            self.chatDataSourceDidUpdate(dataSource)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "チャット"
    }
    
    
    // MARK: - Action
    
    func onSend(_ button: UIButton) {
        print("")
    }
    
    
    // MARK: - BaseChatViewController
    
    override func createChatInputView() -> UIView {
        let screenWidth = UIScreen.main.bounds.size.width
        let v = UIView(frame: CGRect(origin: CGPoint.zero,
                                     size: CGSize(width: screenWidth, height: 50.0)))
        v.backgroundColor = UIColor.lightGray
        
        let button = UIButton(type: .custom)
        button.setTitle("送信", for: .normal)
        button.frame = CGRect(x: v.frame.size.width - 50.0 - 4.0,
                              y: 8.0,
                              width: 50.0,
                              height: v.frame.size.height - (8.0 * 2))
        button.addTarget(self, action: #selector(ChatViewController.onSend(_:)), for: .touchUpInside)
        v.addSubview(button)
        
        let text = UITextField(frame: CGRect(x: 8.0,
                                             y: 8.0,
                                             width: button.frame.origin.x - (8.0 * 2),
                                             height: v.frame.size.height - (8.0 * 2)))
        text.placeholder = "メッセージを書こう"
        text.backgroundColor = UIColor.white
        v.addSubview(text)
        
        return v
    }
    
    override func createPresenterFactory() -> ChatItemPresenterFactoryProtocol {
        return ChatItemPresenterFactory()
    }
    
}
