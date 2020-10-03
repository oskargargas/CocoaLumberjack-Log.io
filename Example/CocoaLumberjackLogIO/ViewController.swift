//
//  ViewController.swift
//  CocoaLumberjackLogIO
//
//  Created by Sergio García on 10/05/2020.
//  Copyright (c) 2020 Sergio García. All rights reserved.
//

import UIKit
import CocoaLumberjack
import CocoaLumberjackLogIO

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DDLog.add(LogIOLogger(host: "logio.domain.com", port: 6699, node: "user-id", stream: "app-name"))
    }
}

