//
//  Logger.swift
//  MPUtils
//
//  Created by Martin Púčik on 16/07/2017.
//  Copyright © 2017 MartinPucik. All rights reserved.
//

#if canImport(Foundation)
import Foundation

// MARK: - Log methods

public func INFO(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("\(formattedDate) | 💙 \(message ?? "") | \(funcion) | \(lastFilePath(from: file)):\(line)")
}

public func WARN(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("\(formattedDate) | 💛 \(message ?? "") | \(funcion) | \(lastFilePath(from: file)):\(line)")
}

public func ERROR(_ message: Any?, file: StaticString = #file, line: UInt = #line, funcion: StaticString = #function) {
    print("\(formattedDate) | ❌ \(message ?? "") | \(funcion) | \(lastFilePath(from: file)):\(line)")
}

// MARK: - Private Methods

private func lastFilePath(from string: StaticString) -> String {
    return ("\(string)" as NSString).lastPathComponent
}

internal var formattedDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    formatter.locale = Locale(identifier: "en_US_POSIX")
    return formatter.string(from: Date())
}

#endif
