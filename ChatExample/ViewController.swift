//
//  ViewController.swift
//  ChatExample
//
//  Created by Kenta Nakai on 11/9/16.
//  Copyright © 2016 UROURO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Start"
        
        let c = ChatViewController()
        c.dataSource = ChatDataSource()
        navigationController?.pushViewController(c, animated: true)
    }

}
