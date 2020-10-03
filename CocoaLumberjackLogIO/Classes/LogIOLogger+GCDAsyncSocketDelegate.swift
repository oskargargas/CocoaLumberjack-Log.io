//
//  LogIOLogger+GCDAsyncSocketDelegate.swift
//  CocoaLumberjackLogIO
//
//  Created by Sergio on 05/10/2020.
//

import Foundation
import CocoaAsyncSocket

extension LogIOLogger: GCDAsyncSocketDelegate {
    public func socket(_ sock: GCDAsyncSocket, didConnectTo url: URL) {
        debugPrint("\(#function). Url: \(url)")
    }

    public func socket(_ sock: GCDAsyncSocket, didConnectToHost host: String, port: UInt16) {
        debugPrint("\(#function). Host: \(host) Port: \(port)")
    }

    public func socket(_ sock: GCDAsyncSocket, didWriteDataWithTag tag: Int) {
        debugPrint("\(#function). Tag: \(tag)")
    }

    public func socket(_ sock: GCDAsyncSocket, didReceive trust: SecTrust, completionHandler: @escaping (Bool) -> Void) {
        debugPrint(#function)
    }

    public func socket(_ sock: GCDAsyncSocket, didRead data: Data, withTag tag: Int) {
        debugPrint("\(#function). Tag: \(tag)")
    }

    public func socket(_ sock: GCDAsyncSocket, didReadPartialDataOfLength partialLength: UInt, tag: Int) {
        debugPrint(#function)
    }

    public func socketDidDisconnect(_ sock: GCDAsyncSocket, withError err: Error?) {
        debugPrint("\(#function). Error: \(err?.localizedDescription ?? "-")")
    }
}
