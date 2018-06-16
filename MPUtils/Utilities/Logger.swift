//
//  Logger.swift
//  MPUtils
//
//  Created by Martin Púčik on 16/07/2017.
//  Copyright © 2017 MartinPucik. All rights reserved.
//

import Foundation

// MARK: - Logs

public func INFO(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("💙 [\(lastFilePath(from: file)):\(line) - \(funcion)] \(message ?? "")")
}

public func WARN(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("💛 [\(lastFilePath(from: file)):\(line) - \(funcion)] \(message ?? "")")
}

public func ERROR(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("❌ [\(lastFilePath(from: file)):\(line) - \(funcion)] \(message ?? "")")
}

// MARK: - Notifications

public func NC_ADD(observer: Any, selector: Selector, name: Notification.Name, obj: Any? = nil) {
    NotificationCenter.default.addObserver(observer, selector: selector, name: name, object: obj)
}

public func NC_REMOVE(observer: Any) {
    NotificationCenter.default.removeObserver(observer)
}

public func NC_POST(name: Notification.Name, obj: Any? = nil) {
    NotificationCenter.default.post(name: name, object: obj)
}

// MARK: - Private Methods

private func lastFilePath(from string: StaticString) -> String {
    return ("\(string)" as NSString).lastPathComponent
}
