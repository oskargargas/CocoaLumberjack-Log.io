//
//  LogIOLogger+GCDAsyncSocketDelegate.swift
//  CocoaLumberjackLogIO
//
//  Created by Sergio on 05/10/2020.
//

import os
import Foundation
import CocoaAsyncSocket

extension LogIOLogger: GCDAsyncSocketDelegate {
    public func socket(_ sock: GCDAsyncSocket, didConnectTo url: URL) {
        os_log("[LogIO] %s. Url: %s", type: .debug, #function, url.debugDescription)
    }

    public func socket(_ sock: GCDAsyncSocket, didConnectToHost host: String, port: UInt16) {
        os_log("[LogIO] %s. Host: %s:%d", type: .debug, #function, host, port)
    }

    public func socketDidDisconnect(_ sock: GCDAsyncSocket, withError err: Error?) {
        os_log("[LogIO] %s. Error: %s", type: .error, #function, err?.localizedDescription ?? "-")
    }
}
