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

private var formattedDate: String {
    let formatter = ISO8601DateFormatter()
    formatter.formatOptions = [.withFractionalSeconds]
    return formatter.string(from: Date())
}

#endif
